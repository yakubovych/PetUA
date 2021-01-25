using Domain.Common;
using System;

namespace Domain.Models
{
    public class AnimalKeeping : AnimalBase
    {
        public long AnimalId { get; set; }
        public Animal Animal { get; set; }
        public long KeepingId { get; set; }
        public Keeping Keeping { get; set; }
        public override bool Equals(object obj)
        {
            return obj is AnimalKeeping dto &&
                   AnimalId == dto.AnimalId &&
                   KeepingId == dto.KeepingId;
        }

        public override int GetHashCode()
        {
            return HashCode.Combine(AnimalId, KeepingId);
        }
    }
}
