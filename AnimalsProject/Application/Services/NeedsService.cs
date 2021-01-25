using Application.DTO.Needs;
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
    public class NeedsService : INeedsService
    {
        private readonly IMapper _mapper;
        private readonly IRepository<Needs> _needsRepository;
        private readonly IRepository<AnimalNeeds> _animalNeedsRepository;
        public NeedsService(IMapper mapper, IRepository<AnimalNeeds> animalNeedsRepository, IRepository<Needs> needsRepository)
        {
            _mapper = mapper;
            _needsRepository = needsRepository;
            _animalNeedsRepository = animalNeedsRepository;
        }

        public async Task CreateAnimalWithNeeds(AnimalForCreationDto animal, Animal model)
        {
            if (animal.Needs == null)
                animal.Needs = new HashSet<NeedsDto>();

            _animalNeedsRepository.TryCreateManyToMany(animal.Needs.Select(x => x.Id)
                .Select(x => new AnimalNeeds
                {
                    NeedsId = x,
                    AnimalId = model.Id
                }));
            await _animalNeedsRepository.SaveAsync();
        }

        public async Task<IEnumerable<NeedsDto>> GetAll()
        {
            var needs = await _needsRepository.GetAllAsync();
            var needsDto = needs.Select(a => _mapper.Map<NeedsDto>(a));
            return needsDto;
        }

        public async Task UpdateAnimalWithNeeds(AnimalDto animal, Animal model)
        {
            if (animal.Needs == null)
                animal.Needs = new HashSet<NeedsDto>();

            _animalNeedsRepository.TryUpdateManyToMany(model.AnimalNeeds, animal.Needs.Select(x => x.Id)
                .Select(x => new AnimalNeeds
                {
                    NeedsId = x,
                    AnimalId = animal.Id
                }), x => x.NeedsId);
            await _animalNeedsRepository.SaveAsync();
        }
    }
}
