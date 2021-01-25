using Application.DTO.Attitude;
using Application.DTO.Animal;
using Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IAttitudeToService
    {
        Task<IEnumerable<AttitudeToDto>> GetAllAttitudes();
        Task CreateAnimalWithAttitudes(AnimalForCreationDto animal, Animal model);
        Task UpdateAnimalWithAttitudes(AnimalDto animal, Animal model);
    }
}
