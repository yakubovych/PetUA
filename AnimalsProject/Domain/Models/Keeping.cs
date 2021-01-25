using Domain.Common;
using System.Collections.Generic;

namespace Domain.Models
{
    public class Keeping : AnimalBase
    {
        public Keeping()
        {
            AnimalKeepings = new List<AnimalKeeping>();
        }
        public long Id { get; set; }
        public string Name { get; set; }
        public IList<AnimalKeeping> AnimalKeepings { get; set; }
    }
}

