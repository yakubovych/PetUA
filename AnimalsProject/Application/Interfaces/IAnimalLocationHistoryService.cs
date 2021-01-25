using Application.DTO.Animal;
using Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IAnimalLocationHistoryService
    {
        Task WriteAnimalLocationHistory(Animal animal);

        IEnumerable<AnimalLocationHistoryDto> GetAnimalLocationHistory(long animalId);
    }
}
