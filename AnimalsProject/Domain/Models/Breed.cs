using Domain.Common;
using System.Collections.Generic;

namespace Domain.Models
{
    public class Breed : AnimalBase
    {
        public long Id { get; set; }
        public string BreedUkrainian { get; set; }
        public string BreedEnglish { get; set; }
        public IList<Animal> Animals { get; set; }
    }
}
