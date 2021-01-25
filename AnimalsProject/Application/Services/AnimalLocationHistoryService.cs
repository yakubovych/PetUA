using Application.DTO.Animal;
using Application.Interfaces;
using AutoMapper;
using Persistance.Interfaces;
using Domain.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Application.Common.Constants;

namespace Application.Services
{
    public class AnimalLocationHistoryService : IAnimalLocationHistoryService
    {
        private readonly IMapper _mapper;

        private readonly IRepository<AnimalLocationHistory> _repository;

        public AnimalLocationHistoryService(IMapper mapper, IRepository<AnimalLocationHistory> repository)
        {
            _mapper = mapper;
            _repository = repository;
        }

        public IEnumerable<AnimalLocationHistoryDto> GetAnimalLocationHistory(long animalId)
        {
            if (animalId < 0)
                throw new ArgumentException(ExceptionStrings.NegativeIntegerValueException, nameof(animalId));

            return _repository.GetAllQueryable().Where(prop => prop.AnimalId == animalId)
                .Include(obj => obj.Address)
                .Select(obj => _mapper.Map<AnimalLocationHistoryDto>(obj));
        }

        public async Task WriteAnimalLocationHistory(Animal animal)
        {
            if (animal != null)
            {
                await _repository.AddAsync(new AnimalLocationHistory()
                {
                    AnimalId = animal.Id,
                    AddressId = animal.AddressId
                });
            }
            else
            {
                throw new ArgumentNullException(nameof(animal), ExceptionStrings.NullArgumentException);
            }
            
        }
    }
}
