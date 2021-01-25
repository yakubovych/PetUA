using Application.DTO.Breed;
using Application.DTO.Animal;
using Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IBreedService
    {
        Task<IEnumerable<BreedDto>> GetAllBreeds();
        Task<BreedForCreationDto> CreateBreed(BreedForCreationDto breed);
        Task<long> CreateAnimalWithBreed(AnimalForCreationDto animal, Animal model);
        Task UpdateAnimalWithBreed(AnimalDto animal, Animal model);
        Task UpdateBreed(BreedDto breed);
        Task DeleteBreed(long breedId);
        Task<BreedDto> GetBreedById(long id);
    }
}
