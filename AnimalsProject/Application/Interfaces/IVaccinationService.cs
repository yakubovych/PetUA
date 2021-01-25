using Application.DTO.Animal;
using Application.DTO.VaccinationDtos;
using Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IVaccinationService
    {
        Task<IEnumerable<VaccinationDto>> GetAll();
        Task<VaccinationDto> GetById(long id);
        Task<VaccinationForCreationDto> Create(VaccinationForCreationDto vaccination);
        Task CreateAnimalWithVaccination(AnimalForCreationDto animal, Animal model);
        Task Update(VaccinationDto vaccination);
        Task UpdateAnimalWithVaccination(AnimalDto animal, Animal model);
        Task Delete(long vaccinationId);
    }
}
