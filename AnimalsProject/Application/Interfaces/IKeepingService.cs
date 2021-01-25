using Application.DTO.Animal;
using Application.DTO.Keeping;
using Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IKeepingService
    {
        Task<IEnumerable<KeepingDto>> GetAll();
        Task CreateAnimalWithKeepings(AnimalForCreationDto animal, Animal model);
        Task UpdateAnimalWithKeepings(AnimalDto animal, Animal model);
    }
}
