using System;
using Domain.Common;
using Domain.Enums;

namespace Domain.Models
{
    public class AdoptOrder : AnimalBase
    {
        public long Id { get; set; }
        public long AnimalId { get; set; }
        public Animal Animal { get; set; }
        public string UserId { get; set; }
        public User User { get; set; }
        public string UserMotivation { get; set; }
        public string AdminComment { get; set; }
        public OrderStatus Status { get; set; }
        public DateTime ClosingDate { get; set; }
        public DateTime EndingDate { get; set; }
        public override bool Equals(object obj)
        {
            return obj is AdoptOrder dto &&
                   AnimalId == dto.AnimalId &&
                   UserId == dto.UserId;
        }

        public override int GetHashCode()
        {
            return HashCode.Combine(AnimalId, UserId);
        }

    }
}
