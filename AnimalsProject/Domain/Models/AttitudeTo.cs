using Domain.Common;
using System.Collections.Generic;

namespace Domain.Models
{
    public class AttitudeTo : AnimalBase
    {
        public AttitudeTo()
        {
            AnimalAttitudes = new List<AnimalAttitudeTo>();
        }
        public long Id { get; set; }
        public string Name { get; set; }
        public IList<AnimalAttitudeTo> AnimalAttitudes { get; set; }

    }
}
