using Application.DTO.Breed;
using Application.DTO.Animal;
using Application.Interfaces;
using AutoMapper;
using Persistance.Interfaces;
using Domain.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Services
{
    public class BreedService : IBreedService
    {
        private readonly IRepository<Breed> _breedRepository;
        private readonly IRepository<Animal> _animalRepository;
        private readonly IMapper _mapper;
        public BreedService(IRepository<Breed> repository, IRepository<Animal> animalRepository, IMapper mapper)
        {
            _breedRepository = repository;
            _animalRepository = animalRepository;
            _mapper = mapper;
        }

        public async Task<IEnumerable<BreedDto>> GetAllBreeds()
        {
            var breeds = await _breedRepository.GetAllAsync();
            var breedsDto = breeds.Select(a => _mapper.Map<BreedDto>(a));
            return breedsDto;
        }

        public async Task<BreedDto> GetBreedById(long id)
        {
            var breed = await _breedRepository.GetByIdAsync(id);
            return new BreedDto()
            {
                Id = breed.Id,
                LanguageUa = breed.BreedUkrainian,
                LanguageEn = breed.BreedEnglish
            };
        }

        public async Task<BreedForCreationDto> CreateBreed(BreedForCreationDto breed)
        {
            await _breedRepository.AddAsync(new Breed()
            {
                BreedEnglish = breed.LanguageEn,
                BreedUkrainian = breed.LanguageUa
            });
            await _breedRepository.SaveAsync();
            return breed;
        }

        public async Task<long> CreateAnimalWithBreed(AnimalForCreationDto animal, Animal model)
        {
            if (animal.Breed == null)
                animal.Breed = new BreedForCreationDto { LanguageEn = "none", LanguageUa = "none" };

            var breed = _breedRepository.GetAllQueryable().FirstOrDefault(
                x => x.BreedEnglish.ToLower() == animal.Breed.LanguageEn.ToLower()
                && x.BreedUkrainian.ToLower() == animal.Breed.LanguageUa.ToLower());

            long breedId;

            if (breed != null)
            {
                breedId = breed.Id; 
            }
            else
            {
                await _breedRepository.AddAsync(new Breed { BreedEnglish = animal.Breed.LanguageEn, BreedUkrainian = animal.Breed.LanguageUa });

                var breedTemp = _breedRepository.GetAllQueryable().FirstOrDefault(
                x => x.BreedEnglish.ToLower() == animal.Breed.LanguageEn.ToLower()
                && x.BreedUkrainian.ToLower() == animal.Breed.LanguageUa.ToLower());

                breedId = breedTemp.Id;
            }

            await _breedRepository.SaveAsync();

            return breedId;
        }

        public async Task UpdateAnimalWithBreed(AnimalDto animal, Animal model)
        {
            if (animal.Breed == null)
                animal.Breed = new BreedDto { LanguageEn = "none", LanguageUa = "none" };

            var breed = _breedRepository.GetAllQueryable().FirstOrDefault(
                x => x.BreedEnglish.ToLower() == animal.Breed.LanguageEn.ToLower()
                && x.BreedUkrainian.ToLower() == animal.Breed.LanguageUa.ToLower());



            if (breed != null)
            {
                model.BreedId = breed.Id;
            }
            else
            {
                await _breedRepository.AddAsync(new Breed { BreedEnglish = animal.Breed.LanguageEn, BreedUkrainian = animal.Breed.LanguageUa });

                var breedTemp = _breedRepository.GetAllQueryable().FirstOrDefault(
                x => x.BreedEnglish.ToLower() == animal.Breed.LanguageEn.ToLower()
                && x.BreedUkrainian.ToLower() == animal.Breed.LanguageUa.ToLower());

                model.BreedId = breedTemp.Id;
            }

            _animalRepository.Update(model);

            await _breedRepository.SaveAsync();
            _animalRepository.SaveChanges();
        }

        public async Task UpdateBreed(BreedDto breed)
        {
            var tempBreed = await _breedRepository.GetByIdAsync(breed.Id);
            tempBreed.BreedEnglish = breed.LanguageEn;
            tempBreed.BreedUkrainian = breed.LanguageUa;
            _breedRepository.Update(tempBreed);
            await _breedRepository.SaveAsync();
        }

        public async Task DeleteBreed(long breedId)
        {
            var tempBreed = await _breedRepository.GetByIdAsync(breedId);
            await _breedRepository.Remove(tempBreed);
            await _breedRepository.SaveAsync();
        }
    }
}
