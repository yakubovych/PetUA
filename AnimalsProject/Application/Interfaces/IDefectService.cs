using Application.DTO.Animal;
using Application.DTO.Defect;
using Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IDefectService
    {
        Task<IEnumerable<DefectDto>> GetAllDefects();
        IEnumerable<DefectDto> GetAllDefectsByAnimal(long animalId);
        Task<DefectDto> GetDefectById(long id);
        Task<DefectForCreationDto> CreateDefect(DefectForCreationDto defect);
        Task CreateAnimalWithDefects(AnimalForCreationDto animal, Animal model);
        Task AddDefectToAnimal(long animalId, long defectId);
        Task AddDefectsToAnimal(long animalId, IEnumerable<DefectDto> defects);
        Task UpdateDefect(DefectDto defect);
        Task UpdateAnimalWithDefects(AnimalDto animal, Animal model);
        Task DeleteDefect(long defectId);
        Task DeleteDefectFromAnimal(long animalId, long defectId);
    }
}
