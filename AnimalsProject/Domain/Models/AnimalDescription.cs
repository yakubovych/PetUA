using Domain.Common;

namespace Domain.Models
{
    public class AnimalDescription : AnimalBase
    {
        public long Id { get; set; }
        public string LanguageUa { get; set; }
        public string LanguageEn { get; set; }
        public long AnimalId { get; set; }
        public Animal Animal { get; set; }
    }
}