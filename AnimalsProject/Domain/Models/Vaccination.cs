using Domain.Common;
using System.Collections.Generic;

namespace Domain.Models
{
    public class Vaccination : AnimalBase
    {
        public Vaccination()
        {
            AnimalVaccinations = new List<AnimalVaccination>();
        }
        public long Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public IList<AnimalVaccination> AnimalVaccinations { get; set; }
    }
}
