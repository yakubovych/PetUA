using Application.DTO.Attitude;
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
    public class AttitudeToService : IAttitudeToService
    {
        private readonly IRepository<AttitudeTo> _attitudeRepository;
        private readonly IRepository<AnimalAttitudeTo> _animalAttitudeToRepository;
        private readonly IMapper _mapper;
        public AttitudeToService(IRepository<AttitudeTo> repository, IRepository<AnimalAttitudeTo> animalAttitudeToRepository, IMapper mapper)
        {
            _attitudeRepository = repository;
            _animalAttitudeToRepository = animalAttitudeToRepository;
            _mapper = mapper;
        }

        public async Task CreateAnimalWithAttitudes(AnimalForCreationDto animal, Animal model)
        {
            if (animal.Attitudes == null)
                animal.Attitudes = new HashSet<AttitudeToDto>();

            _animalAttitudeToRepository.TryCreateManyToMany(animal.Attitudes
                .Select(x => new AnimalAttitudeTo
                {
                    AttitudeId = x.Id,
                    AnimalId = model.Id,
                    Mark = x.Mark
                }));
            await _animalAttitudeToRepository.SaveAsync();
        }

        public async Task<IEnumerable<AttitudeToDto>> GetAllAttitudes()
        {
            var attitudes = await _attitudeRepository.GetAllAsync();
            var attitudesDto = attitudes.Select(a => _mapper.Map<AttitudeToDto>(a));
            return attitudesDto.ToList();
        }

        public async Task UpdateAnimalWithAttitudes(AnimalDto animal, Animal model)
        {
            if (animal.Attitudes == null)
                animal.Attitudes = new HashSet<AttitudeToDto>();

            _animalAttitudeToRepository.TryUpdateManyToMany(model.AnimalAttitudes, animal.Attitudes
                .Select(x => new AnimalAttitudeTo
                {
                    AttitudeId = x.Id,
                    AnimalId = animal.Id,
                    Mark = x.Mark
                }), x => x.AttitudeId, x => x.Mark);
            await _animalAttitudeToRepository.SaveAsync();
        }
    }
}
