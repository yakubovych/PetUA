using Application.DTO.Keeping;
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
    public class KeepingService : IKeepingService
    {
        private readonly IMapper _mapper;
        private readonly IRepository<Keeping> _keepingRepository;
        private readonly IRepository<AnimalKeeping> _animalKeepingRepository;
        public KeepingService(IMapper mapper, IRepository<Keeping> keepingRepository, IRepository<AnimalKeeping> animalKeepingRepository)
        {
            _keepingRepository = keepingRepository;
            _mapper = mapper;
            _animalKeepingRepository = animalKeepingRepository;
        }

        public async Task CreateAnimalWithKeepings(AnimalForCreationDto animal, Animal model)
        {
            if (animal.Keepings == null)
                animal.Keepings = new HashSet<KeepingDto>();

            _animalKeepingRepository.TryCreateManyToMany(animal.Keepings.Select(x => x.Id)
                           .Select(x => new AnimalKeeping
                           {
                               KeepingId = x,
                               AnimalId = model.Id,
                           }));
            await _animalKeepingRepository.SaveAsync();
        }

        public async Task<IEnumerable<KeepingDto>> GetAll()
        {
            var keepings = await _keepingRepository.GetAllAsync();
            var keepingsDto = keepings.Select(a => _mapper.Map<KeepingDto>(a));
            return keepingsDto;
        }

        public async Task UpdateAnimalWithKeepings(AnimalDto animal, Animal model)
        {
            if (animal.Keepings == null)
                animal.Keepings = new HashSet<KeepingDto>();

            _animalKeepingRepository.TryUpdateManyToMany(model.AnimalKeepings, animal.Keepings.Select(x => x.Id)
                .Select(x => new AnimalKeeping
                {
                    KeepingId = x,
                    AnimalId = animal.Id,
                }), x => x.KeepingId);
            await _animalKeepingRepository.SaveAsync();
        }
    }
}
