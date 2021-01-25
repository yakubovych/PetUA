using Domain.Models;
using System;

namespace Application.DTO.VaccinationDtos
{
    public class VaccinationFullDto
    {
        public VaccinationFullDto(Vaccination vac, DateTime vaccinationDate, DateTime nextVaccinationDate)
        {
            Id = vac.Id;
            Name = vac.Name;
            Type = vac.Type;
            VaccinationDate = vaccinationDate;
            NextVaccinationDate = nextVaccinationDate;
        }
        public VaccinationFullDto(){}
        public long Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public DateTime VaccinationDate { get; set; }
        public DateTime NextVaccinationDate { get; set; }
        public override bool Equals(object obj)
        {
            return obj is VaccinationFullDto dto &&
                   Id == dto.Id;
        }

        public override int GetHashCode()
        {
            return Id.GetHashCode();
        }
    }
}
