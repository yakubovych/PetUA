using Application.DTO.Animal;
using Application.DTO.Description;
using Domain.Models;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IDescriptionService
    {
        Task CreateAnimalWithDescription(AnimalForCreationDto animal, Animal model);
        Task<DescriptionDto> GetDescriptionById(long id);
        Task UpdateDescription(DescriptionDto description);
        Task Delete(long descriptionId);
    }
}