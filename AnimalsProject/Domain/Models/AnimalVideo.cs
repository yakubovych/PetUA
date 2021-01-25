using Domain.Common;

namespace Domain.Models
{
    public class AnimalVideo : AnimalBase
    {
        public long Id { get; set; }
        public string FileName { get; set; }
        public string Url { get; set; }
        public long AnimalId { get; set; }
        public Animal Animal { get; set; }
    }
}
