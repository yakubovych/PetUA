using Domain.Common;
using System.Collections.Generic;

namespace Domain.Models
{
    public class Defect : AnimalBase
    {
        public Defect()
        {
            AnimalDefects = new List<AnimalDefects>();
        }
        public long Id { get; set; }
        public string Type { get; set; }
        public IList<AnimalDefects> AnimalDefects { get; set; }
    }
}
