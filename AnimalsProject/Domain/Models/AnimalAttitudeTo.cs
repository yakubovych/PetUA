using Domain.Common;
using System;
using System.ComponentModel.DataAnnotations;

namespace Domain.Models
{
    public class AnimalAttitudeTo : AnimalBase
    {
        public long AnimalId { get; set; }
        public Animal Animal { get; set; }
        public long AttitudeId { get; set; }
        public AttitudeTo AttitudeTo { get; set; }

        [Range(1,5)]
        public int Mark { get; set; }
        public override bool Equals(object obj)
        {
            return obj is AnimalAttitudeTo dto &&
                   AnimalId == dto.AnimalId &&
                   AttitudeId == dto.AttitudeId;
        }

        public override int GetHashCode()
        {
            return HashCode.Combine(AnimalId, AttitudeId);
        }
    }
}
