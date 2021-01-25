using Application.DTO.Animal;
using Domain.Models;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IIsNewService
    {
        Task<IQueryable<Animal>> UpdateAndGetByNew(IQueryable<Animal> animals);

        void UpdateIsNewCheckbox(AnimalDto animalDto, Animal model);

        Task CreateCheckNewOld(AnimalForCreationDto animalDto, Animal model);
    }
}