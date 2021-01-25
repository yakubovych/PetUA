using Domain.Common;
using System;

namespace Domain.Models
{
    public class Image : AnimalBase
    {
        public long Id { get; set; }
        public string FileName { get; set; }
        public string ImageData { get; set; }
        public long AnimalId { get; set; }
        public Animal Animal { get; set; }
        public override bool Equals(object obj)
        {
            return obj is Image dto &&
                   Id == dto.Id;
        }

        public override int GetHashCode()
        {
            return Id.GetHashCode();
        }
    }
}
