using Application.DTO.Animal;
using Application.Filters;
using Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IAnimalService
    {
        Pagination<AnimalDto> GetAllAnimals(AnimalFilter filter = null, AnimalPaginationFilter pagination = null);
        Pagination<AnimalIncludeValuesDto> GetAllAnimalsIncludeValues(AnimalFilter filter = null, AnimalPaginationFilter pagination = null);
        Task<IEnumerable<AnimalDto>> GetAllAdoptedAnimals();
        Task<IEnumerable<AnimalDto>> GetAllHiddenAnimals();
        Task<AnimalDto> UpdateAnimal(AnimalDto animal);
        Task UpdateApprovedAnimal(AnimalApprovedDto animal);
        Task<AnimalDto> CreateAnimal(AnimalForCreationDto animal);
        AnimalDto GetById(long id);
        AnimalIncludeValuesDto GetByIdIncludeValues(long id);
        Task<IEnumerable<AnimalDto>> GetRecommendedPets(AnimalIncludeValuesDto animalDto);
        Task<AnimalDto> Delete(long id);
        Task<AnimalStatisticDto> GetStatistc(long id);
        Task<IEnumerable<AnimalBookingTimeDto>> GetAnimalsBookingTime();
    }
}
