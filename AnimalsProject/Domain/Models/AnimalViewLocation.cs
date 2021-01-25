

namespace Domain.Models
{
    public class AnimalViewLocation
    {
        public long Id { get; set; }
        public string Location { get; set; }
        public long AnimalId { get; set; }
        public Animal Animal { get; set; }
        public int Count { get; set; }
    }
}
