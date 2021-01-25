using Application.DTO.Needs;
using Application.DTO.Animal;
using Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface INeedsService
    {
        Task<IEnumerable<NeedsDto>> GetAll();
        Task CreateAnimalWithNeeds(AnimalForCreationDto animal, Animal model);
        Task UpdateAnimalWithNeeds(AnimalDto animal, Animal model);
    }
}
