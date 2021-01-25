using Application.DTO.Animal;
using Application.DTO.VaccinationDtos;
using Application.Interfaces;
using AutoMapper;
using Persistance.Interfaces;
using Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Services
{
    public class VaccinationService : IVaccinationService
    {
        private readonly IRepository<Vaccination> _vaccinationRepository;
        private readonly IRepository<AnimalVaccination> _animalVaccinationRepository;
        private readonly IMapper _mapper;
        public VaccinationService(IRepository<Vaccination> vaccinationRepository, 
            IRepository<AnimalVaccination> animalVaccinationRepository, IMapper mapper)
        {
            _vaccinationRepository = vaccinationRepository;
            _animalVaccinationRepository = animalVaccinationRepository;
            _mapper = mapper;
        }

        public async Task<VaccinationForCreationDto> Create(VaccinationForCreationDto vaccination)
        {
            await _vaccinationRepository.AddAsync(new Vaccination()
            {
                Name = vaccination.Name,
                Type = vaccination.Type
            });
            await _vaccinationRepository.SaveAsync();
            return vaccination;
        }

        public async Task CreateAnimalWithVaccination(AnimalForCreationDto animal, Animal model)
        {
            if (animal.Vaccinations == null)
                animal.Vaccinations = new HashSet<VaccinationFullForCreationDto>();

            _animalVaccinationRepository.TryCreateManyToMany(animal.Vaccinations
                .Select(x => new AnimalVaccination
                {
                    VaccinationId = x.Id,
                    AnimalId = model.Id,
                    VaccinationDate = x.VaccinationDate,
                    NextVaccinationDate = SetNextVaccinationDate(animal, x)
                }));
            await _animalVaccinationRepository.SaveAsync();
        }

        public async Task Delete(long vaccinationId)
        {
            var tempVac = await _vaccinationRepository.GetByIdAsync(vaccinationId);
            await _vaccinationRepository.Remove(tempVac);
            await _vaccinationRepository.SaveAsync();
        }

        public async Task<IEnumerable<VaccinationDto>> GetAll()
        {
            var vaccinations = await _vaccinationRepository.GetAllAsync();
            var vaccinationsDto = vaccinations.Select(a => _mapper.Map<VaccinationDto>(a));
            return vaccinationsDto;
        }

        public async Task<VaccinationDto> GetById(long id)
        {
            var vaccination = await _vaccinationRepository.GetByIdAsync(id);
            return new VaccinationDto()
            {
                Id = vaccination.Id,
                Name = vaccination.Name,
                Type = vaccination.Type
            };
        }

        public async Task Update(VaccinationDto vaccination)
        {
            var tempVac = await _vaccinationRepository.GetByIdAsync(vaccination.Id);
            tempVac.Name = vaccination.Name;
            tempVac.Type = vaccination.Type;
            _vaccinationRepository.Update(tempVac);
            await _vaccinationRepository.SaveAsync();
        }

        public async Task UpdateAnimalWithVaccination(AnimalDto animal, Animal model)
        {
            if (animal.Vaccinations == null)
                animal.Vaccinations = new HashSet<VaccinationFullDto>();

            _animalVaccinationRepository.TryUpdateManyToMany(model.AnimalVaccinations, animal.Vaccinations
               .Select(x => new AnimalVaccination
               {
                   VaccinationId = x.Id,
                   AnimalId = animal.Id,
                   VaccinationDate = x.VaccinationDate,
                   NextVaccinationDate = SetNextVaccinationDate(animal, x)
               }), x => x.VaccinationId, x => x.VaccinationDate, x => x.NextVaccinationDate);
            await _animalVaccinationRepository.SaveAsync();
        }

        private DateTime SetNextVaccinationDate(AnimalForCreationDto animal, VaccinationFullForCreationDto vaccination)
        {
            var animalYears = DateTime.Now - animal.DateOfBirth;
            var nextDate = (animalYears < DateTime.Now.AddYears(1) - DateTime.Now) ? (vaccination.VaccinationDate.Date.AddDays(21)) : (vaccination.VaccinationDate.Date.AddYears(1));
            return nextDate;
        }

        private DateTime SetNextVaccinationDate(AnimalDto animal, VaccinationFullDto vaccination)
        {
            var animalYears = DateTime.Now - animal.DateOfBirth;
            var nextDate = (animalYears < DateTime.Now.AddYears(1) - DateTime.Now) ? (vaccination.VaccinationDate.Date.AddDays(21)) : (vaccination.VaccinationDate.Date.AddYears(1));
            return nextDate;
        }
    }
}
