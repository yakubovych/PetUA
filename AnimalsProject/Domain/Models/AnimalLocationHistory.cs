using System;

namespace Domain.Models
{
    public class AnimalLocationHistory
    {
        public long Id { get; set; }

        public long AnimalId { get; set; }

        public Animal Animal { get; set; }

        public long AddressId { get; set; }

        public Address Address { get; set; }

        public DateTime Date { get; set; } = DateTime.UtcNow;
    }
}
