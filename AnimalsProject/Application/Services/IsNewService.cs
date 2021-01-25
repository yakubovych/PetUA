using System;
using System.Linq;
using System.Threading.Tasks;
using Application.DTO.Animal;
using Application.Interfaces;
using Persistance.Interfaces;
using Domain.Models;
using Microsoft.Extensions.Configuration;

namespace Application.Services
{
    public class IsNewService : IIsNewService
    {
        private readonly IRepository<Animal> _animalRepository;
        private readonly IConfiguration _configuration;

        public IsNewService(IRepository<Animal> animalRepository, IConfiguration configuration)
        {
            _animalRepository = animalRepository;
            _configuration = configuration;
        }

        public async Task<IQueryable<Animal>> UpdateAndGetByNew(IQueryable <Animal> animals)
        {
            foreach (var b in animals)
            {
                if (b.IsNew && DateTime.Now - b.FoundDate >= DateTime.Now.AddDays(int.Parse(_configuration["DurationAnimalNewStatus"])) - DateTime.Now)
                {
                    b.IsNew = false;
                    _animalRepository.Update(b);
                }
            }
            await _animalRepository.SaveAsync();
            return animals;
        }


        public  void UpdateIsNewCheckbox(AnimalDto animalDto, Animal model)
        {
            if (animalDto.IsNew && DateTime.Now - model.FoundDate >= DateTime.Now.AddDays(int.Parse(_configuration["DurationAnimalNewStatus"])) - DateTime.Now)
            {
                model.FoundDate = DateTime.Now;
            }
        }

        public async Task CreateCheckNewOld(AnimalForCreationDto animalDto, Animal model)
        {
            if (animalDto.IsNew && DateTime.Now - animalDto.FoundDate >= DateTime.Now.AddDays(int.Parse(_configuration["DurationAnimalNewStatus"])) - DateTime.Now)
            {
                model.FoundDate = DateTime.Now;
                await _animalRepository.SaveAsync();
            }
        }
    }
}