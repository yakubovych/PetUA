using Domain.Common;
using System;
using System.ComponentModel.DataAnnotations;

namespace Domain.Models
{
    public class AnimalVaccination : AnimalBase
    {
        public long AnimalId { get; set; }
        public Animal Animal { get; set; }
        public long VaccinationId { get; set; }
        public Vaccination Vaccination { get; set; }

        [DataType(DataType.Date)]
        public DateTime VaccinationDate { get; set; }
        [DataType(DataType.Date)]
        public DateTime NextVaccinationDate { get; set; }

        public override bool Equals(object obj)
        {
            return obj is AnimalVaccination dto &&
                   AnimalId == dto.AnimalId &&
                   VaccinationId == dto.VaccinationId;
        }

        public override int GetHashCode()
        {
            return HashCode.Combine(AnimalId, VaccinationId);
        }
    }
}
