using Domain.Common;
using System;

namespace Domain.Models
{
    public class AnimalDefects : AnimalBase
    {
        public long AnimalId { get; set; }
        public Animal Animal { get; set; }
        public long DefectsId { get; set; }
        public Defect Defect { get; set; }
        public override bool Equals(object obj)
        {
            return obj is AnimalDefects dto &&
                   AnimalId == dto.AnimalId &&
                   DefectsId == dto.DefectsId;
        }

        public override int GetHashCode()
        {
            return HashCode.Combine(AnimalId, DefectsId);
        }
    }
}
