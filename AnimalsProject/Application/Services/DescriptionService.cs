using Application.DTO.Description;
using Application.DTO.Animal;
using Application.Interfaces;
using Persistance.Interfaces;
using Domain.Models;
using AutoMapper;
using System.Threading.Tasks;
using Application.Exceptions;

namespace Application.Services
{
    public class DescriptionService : IDescriptionService
    {
        private readonly IRepository<AnimalDescription> _descriptionRepository;
        private readonly IMapper _mapper;
        public DescriptionService(IRepository<AnimalDescription> descriptionRepository, IMapper mapper)
        {
            _descriptionRepository = descriptionRepository;
            _mapper = mapper;
        }
        public async Task CreateAnimalWithDescription(AnimalForCreationDto animal, Animal model)
        {
            if (animal.Description == null)
                return;

           await _descriptionRepository.AddAsync(new AnimalDescription { LanguageEn = animal.Description.LanguageEn, LanguageUa = animal.Description.LanguageUa, AnimalId = model.Id });

           await _descriptionRepository.SaveAsync();
        }

        public async Task<DescriptionDto> GetDescriptionById(long id)
        {
            var description = await _descriptionRepository.GetByIdAsync(id);
            var descriptionResult = _mapper.Map<DescriptionDto>(description);
            return descriptionResult;
        }

        public async Task UpdateDescription(DescriptionDto description)
        {
            var tempDescription = await _descriptionRepository.GetByIdAsync(description.Id);
            tempDescription.LanguageEn = description.LanguageEn;
            tempDescription.LanguageUa = description.LanguageUa;
            _descriptionRepository.Update(tempDescription);
            await _descriptionRepository.SaveAsync();
        }

        public async Task Delete(long descriptionId)
        {
            var description = await _descriptionRepository.GetByIdAsync(descriptionId);
            if (description == null)
            {
                throw new ObjectNotFoundException(nameof(descriptionId), "description not found");
            }
            await _descriptionRepository.Remove(description);
            await _descriptionRepository.SaveAsync();
        }
    }
}
