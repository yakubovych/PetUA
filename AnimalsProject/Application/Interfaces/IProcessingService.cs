using Application.DTO.Processing;
using Application.DTO.Animal;
using Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IProcessingService
    {
        Task<IEnumerable<ProcessingDto>> GetAll();
        Task CreateAnimalWithProcessing(AnimalForCreationDto animal, Animal model);
        Task UpdateAnimalWithProcessing(AnimalDto animal, Animal model);
    }
}
