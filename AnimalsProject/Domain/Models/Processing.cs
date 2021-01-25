using Domain.Common;
using System.Collections.Generic;

namespace Domain.Models
{
    public class Processing : AnimalBase
    {
        public Processing()
        {
            AnimalProcessings = new List<AnimalProcessing>();
        }
        public long Id { get; set; }
        public string Type { get; set; }
        public IList<AnimalProcessing> AnimalProcessings { get; set; }
    }
}
