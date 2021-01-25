using Domain.Common;
using System;

namespace Domain.Models
{
    public class AnimalNeeds : AnimalBase
    {
        public long AnimalId { get; set; }
        public Animal Animal { get; set; }
        public long NeedsId { get; set; }
        public Needs Needs { get; set; }
        public override bool Equals(object obj)
        {
            return obj is AnimalNeeds dto &&
                   AnimalId == dto.AnimalId &&
                   NeedsId == dto.NeedsId;
        }

        public override int GetHashCode()
        {
            return HashCode.Combine(AnimalId, NeedsId);
        }
    }
}
