using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Application.DTO.Animal;
using Application.Filters;
using Application.Interfaces;
using Application.Queries;
using AutoMapper;
using Persistance.Interfaces;
using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Application.Helpers;
using Domain.Enums;
using System.Transactions;

namespace Application.Services
{
    public partial class AnimalService : IAnimalService
    {
        private readonly IRepository<Animal> _repository;
        private readonly IKeepingService _keepingService;
        private readonly IAttitudeToService _attitudesToService;
        private readonly IDefectService _defectService;
        private readonly IProcessingService _processingService;
        private readonly INeedsService _needsService;
        private readonly IIsNewService _isNewService;
        private readonly IVaccinationService _vaccinationService;
        private readonly IMapper _mapper;
        private readonly IUriService _uriService;
        private readonly IAnimalLocationHistoryService _locationHistoryService;
        private readonly IStatisticService<Animal> _statisticService;
        private readonly IAnimalViewLocationService _locationService;
        private readonly IDescriptionService _descriptionService;
        private readonly IBreedService _breedService;
        private readonly IFilterService<Animal, AnimalQuery> _animalFilterService;

        public AnimalService(IRepository<Animal> repository, IMapper mapper, IKeepingService keepingService,
                             IAttitudeToService attitudesToService, IDefectService defectService,
                             IProcessingService processingService, INeedsService needsService,
                             IVaccinationService vaccinationService, IIsNewService isNewService, IUriService uriService,
                             IAnimalLocationHistoryService locationHistoryService,
                             IStatisticService<Animal> statisticService, IAnimalViewLocationService locationService,
                             IFilterService<Animal, AnimalQuery> animalFilterService,
                             IDescriptionService descriptionService, IBreedService breedService)
        {
            _repository = repository;
            _mapper = mapper;
            _keepingService = keepingService;
            _attitudesToService = attitudesToService;
            _defectService = defectService;
            _processingService = processingService;
            _needsService = needsService;
            _isNewService = isNewService;
            _vaccinationService = vaccinationService;
            _uriService = uriService;
            _locationHistoryService = locationHistoryService;
            _statisticService = statisticService;
            _descriptionService = descriptionService;
            _breedService = breedService;
            _locationService = locationService;
            _animalFilterService = animalFilterService;
        }
    public Pagination<AnimalDto> GetAllAnimals(AnimalFilter filter = null, AnimalPaginationFilter pagination = null)
        {
            var filterQuery = _mapper.Map<AnimalQuery>(filter);
            var paginationQuery = _mapper.Map<AnimalPaginationQuery>(pagination);
            var skip = (paginationQuery.PageNumber - 1) * paginationQuery.PageSize;
            IQueryable<Animal> animals = _repository.GetAllQueryable()
                                             .Where(x => x.Status != AnimalStatus.Adopted && !x.IsHidden)
                                             .Include(animal => animal.Images)
                                             .Include(x => x.Category)
                                             .Include(x => x.Videos)
                                             .Include(x => x.Description)
                                             .Include(x => x.Breed)
                                             .OrderByDescending(x => x.IsNew).ThenByDescending(x => x.FoundDate);
            if (filter != null)
                animals = _animalFilterService.AddAllFiltersQuery(filterQuery, animals);
            var queryResult = animals.ToList();
            var animalsResult = animals.Select(x => _mapper.Map<AnimalDto>(x))
                .Skip(skip).Take(paginationQuery.PageSize).ToList();
            var paginationResponse = PaginationHelper.CreatePaginatedResponse(_uriService, paginationQuery,
                    animalsResult, queryResult, "/Animal/GetAllAnimalsIncludeValues", filterQuery);
            return paginationResponse;
        }
        public Pagination<AnimalIncludeValuesDto> GetAllAnimalsIncludeValues(AnimalFilter filter = null, AnimalPaginationFilter pagination = null)
        {
            var filterQuery = _mapper.Map<AnimalQuery>(filter);
            var paginationQuery = _mapper.Map<AnimalPaginationQuery>(pagination);
            var skip = (paginationQuery.PageNumber - 1) * paginationQuery.PageSize;
            var animals = _repository.GetAllQueryable()
                                     .Where(x => x.Status != AnimalStatus.Adopted && !x.IsHidden)
                                     .Include(animal => animal.Images)
                                     .Include(x => x.Category)
                                     .Include(x => x.Address)
                                     .Include(x => x.Food)
                                     .Include(x => x.Description)
                                     .Include(x => x.Breed)
                                     .Include(x => x.Videos)
                                     .Include(x => x.AnimalDefects)
                                        .ThenInclude(x => x.Defect)
                                     .Include(animal => animal.AnimalVaccinations)
                                        .ThenInclude(vac => vac.Vaccination)
                                     .Include(animal => animal.AnimalAttitudes)
                                        .ThenInclude(att => att.AttitudeTo)
                                     .OrderByDescending(x => x.IsNew)
                                        .ThenByDescending(x => x.FoundDate)
                                        .AsQueryable();
            if(filter != null)
                animals = _animalFilterService.AddAllFiltersQuery(filterQuery, animals);
            var queryResult = animals.ToList();
            var animalsResult = animals.Select(x => _mapper.Map<AnimalIncludeValuesDto>(x))
                .Skip(skip).Take(paginationQuery.PageSize).ToList();
            var paginationResponse = PaginationHelper.CreatePaginatedResponse(_uriService, paginationQuery,
                 animalsResult, queryResult, "/Animal/GetAll", filterQuery);
            return paginationResponse;
        }
        public AnimalDto GetById(long id)
        {
            var animal = _mapper.Map<AnimalDto>(_repository.Entities
                      .Include(animal => animal.AnimalNeeds)
                        .ThenInclude(need => need.Needs)
                        .AsNoTracking()
                      .Include(animal => animal.AnimalVaccinations)
                        .ThenInclude(vac => vac.Vaccination)
                        .AsNoTracking()
                      .Include(animal => animal.AnimalProcessings)
                        .ThenInclude(proc => proc.Processing)
                        .AsNoTracking()
                      .Include(animal => animal.AnimalKeepings)
                        .ThenInclude(keep => keep.Keeping)
                        .AsNoTracking()
                      .Include(animal => animal.AnimalAttitudes)
                        .ThenInclude(att => att.AttitudeTo)
                        .AsNoTracking()
                      .Include(animal => animal.AnimalDefects)
                        .ThenInclude(defect => defect.Defect)
                        .AsNoTracking()
                      .Include(animal => animal.Images)
                        .AsNoTracking()
                      .Include(animal => animal.Breed)
                         .AsNoTracking()
                      .Include(animal => animal.Description)
                         .AsNoTracking()
                      .FirstOrDefault(x => x.Id == id)
                );
            return animal;
        }
        public AnimalIncludeValuesDto GetByIdIncludeValues(long id)
        {
            var animal = _mapper.Map<AnimalIncludeValuesDto>(_repository.Entities
                      .Include(animal => animal.AnimalNeeds)
                        .ThenInclude(need => need.Needs)
                        .AsNoTracking()
                      .Include(animal => animal.AnimalVaccinations)
                        .ThenInclude(vac => vac.Vaccination)
                        .AsNoTracking()
                      .Include(animal => animal.AnimalProcessings)
                        .ThenInclude(proc => proc.Processing)
                        .AsNoTracking()
                      .Include(animal => animal.AnimalKeepings)
                        .ThenInclude(keep => keep.Keeping)
                        .AsNoTracking()
                      .Include(animal => animal.AnimalAttitudes)
                        .ThenInclude(att => att.AttitudeTo)
                        .AsNoTracking()
                      .Include(animal => animal.AnimalDefects)
                        .ThenInclude(defect => defect.Defect)
                        .AsNoTracking()
                      .Include(animal => animal.Images)
                        .AsNoTracking()
                      .Include(animal => animal.Food)
                         .AsNoTracking()
                      .Include(animal => animal.Address)
                         .AsNoTracking()
                      .Include(animal => animal.Category)
                         .AsNoTracking()
                       .Include(animal => animal.Videos)
                         .AsNoTracking()
                       .Include(animal => animal.Description)
                         .AsNoTracking()
                       .Include(animal => animal.Breed)
                         .AsNoTracking()
                      .FirstOrDefault(x => x.Id == id)
                );
            return animal;
        }

        public async Task<IEnumerable<AnimalDto>> GetRecommendedPets(AnimalIncludeValuesDto animalDto)
        {
            var animals = await _repository.Entities
                      .OrderBy(animal => animal.FoundDate)
                      .Where(animal => animal.Id != animalDto.Id)
                      .Include(animal => animal.Images)
                      .Take(3)
                      .ToListAsync();
            var animalsDto = animals.Select(x => _mapper.Map<AnimalDto>(x));
            return animalsDto;
        }

        public async Task<AnimalDto> UpdateAnimal(AnimalDto animal)
        {
            var model = _repository.Entities
                  .Include(animal => animal.AnimalNeeds)
                    .ThenInclude(need => need.Needs)
                    .AsNoTracking()
                  .Include(animal => animal.AnimalVaccinations)
                    .ThenInclude(vac => vac.Vaccination)
                    .AsNoTracking()
                  .Include(animal => animal.AnimalProcessings)
                    .ThenInclude(proc => proc.Processing)
                    .AsNoTracking()
                  .Include(animal => animal.AnimalKeepings)
                    .ThenInclude(keep => keep.Keeping)
                    .AsNoTracking()
                  .Include(animal => animal.AnimalAttitudes)
                    .ThenInclude(att => att.AttitudeTo)
                    .AsNoTracking()
                  .Include(animal => animal.AnimalDefects)
                    .ThenInclude(defect => defect.Defect)
                    .AsNoTracking()
                  .Include(animal => animal.Description)
                    .AsNoTracking()
                  //.Include(animal => animal.Breed)
                    //.AsNoTracking()
                  .Include(animal => animal.Images)
                  .FirstOrDefault(x => x.Id == animal.Id);

            var isLocationNew = animal.AddressId != model.AddressId;
            using (var scope = new TransactionScope(TransactionScopeAsyncFlowOption.Enabled))
            {               
                await _keepingService.UpdateAnimalWithKeepings(animal, model);
                await _needsService.UpdateAnimalWithNeeds(animal, model);
                await _vaccinationService.UpdateAnimalWithVaccination(animal, model);
                await _processingService.UpdateAnimalWithProcessing(animal, model);
                await _attitudesToService.UpdateAnimalWithAttitudes(animal, model);
                await _defectService.UpdateAnimalWithDefects(animal, model);
                _mapper.Map(animal, model);
                await _breedService.UpdateAnimalWithBreed(animal, model);
                 _isNewService.UpdateIsNewCheckbox(animal, model);
                _repository.Update(model);
                
                if (isLocationNew)
                {
                    await _locationHistoryService.WriteAnimalLocationHistory(model);
                }
                await _repository.SaveAsync();
                scope.Complete();
            }

            var returnModel = GetById(model.Id);
            return returnModel;
        }

        public async Task UpdateApprovedAnimal(AnimalApprovedDto animal)
        {
            var model = _repository.Entities
                  .Include(animal => animal.Images)
                  .FirstOrDefault(x => x.Id == animal.Id);

            using (var scope = new TransactionScope(TransactionScopeAsyncFlowOption.Enabled))
            {
                _mapper.Map(animal, model);
                _repository.Update(model);
                await _repository.SaveAsync();
                scope.Complete();
            }
        }

        public async Task<AnimalDto> CreateAnimal(AnimalForCreationDto animal)
        {
            var model = new Animal();
            _mapper.Map(animal, model);
            using (var scope = new TransactionScope(TransactionScopeAsyncFlowOption.Enabled))
            {
                model.BreedId = await _breedService.CreateAnimalWithBreed(animal, model);
                await _repository.AddAsync(model);
                await _descriptionService.CreateAnimalWithDescription(animal, model);
                await _locationHistoryService.WriteAnimalLocationHistory(model);
                await _isNewService.CreateCheckNewOld(animal, model);
                await _keepingService.CreateAnimalWithKeepings(animal, model);
                await _needsService.CreateAnimalWithNeeds(animal, model);
                await _vaccinationService.CreateAnimalWithVaccination(animal, model);
                await _processingService.CreateAnimalWithProcessing(animal, model);
                await _attitudesToService.CreateAnimalWithAttitudes(animal, model);
                await _defectService.CreateAnimalWithDefects(animal, model);
                scope.Complete();
            }
            var returnModel = GetById(model.Id);
            return returnModel;
        }

        public async Task<AnimalDto> Delete(long id)
        {
            var animal = await _repository.GetByIdAsync(id);
            if (animal == null)
            {
                throw new ArgumentNullException(nameof(id), "animal not found");
            }
            await _repository.Remove(animal);
            var animalDto = _mapper.Map<AnimalDto>(animal);
            return animalDto;
        }
        public async Task<IEnumerable<AnimalDto>> GetAllAdoptedAnimals()
        {
            var animals = _repository.GetAllQueryable()
                .Include(animal => animal.Images)
                .Where(x => x.Status == AnimalStatus.Adopted && !x.IsHidden);
            var animalsResult = animals.Select(x => _mapper.Map<AnimalDto>(x));
            return await animalsResult.ToListAsync();
        }

        public async Task<IEnumerable<AnimalDto>> GetAllHiddenAnimals()
        {
            var animals = _repository.GetAllQueryable()
                .Include(animal => animal.Images)
                .Where(x => x.IsHidden);
            var animalsResult = animals.Select(x => _mapper.Map<AnimalDto>(x));
            return await animalsResult.ToListAsync();
        }

        public async Task<AnimalStatisticDto> GetStatistc(long id)
        {
            var animalStatistic = _mapper.Map<AnimalStatisticDto>(await _statisticService.GetStatistic(id));
            animalStatistic.ViewLocations = _locationService.GetViewLocationByAnimal(id).ToList();
            return animalStatistic;
        }
    }
}