using Domain.Models;
using System;

namespace Application.DTO.VaccinationDtos
{
    public class VaccinationFullForCreationDto
    {
        public VaccinationFullForCreationDto(Vaccination vac, DateTime vaccinationDate)
        {
            Id = vac.Id;
            Name = vac.Name;
            Type = vac.Type;
            VaccinationDate = vaccinationDate;
        }
        public VaccinationFullForCreationDto() { }
        public long Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public DateTime VaccinationDate { get; set; }
    }
}
