using Domain.Common;
using System.Collections.Generic;

namespace Domain.Models
{
    public class Address : AnimalBase
    {
        public Address()
        {
            Animals = new List<Animal>();
            Users = new List<User>();
        }
        
        public long Id { get; set; }
        public string Name { get; set; }
        public IList<Animal> Animals { get; set; }
        public IList<User> Users { get; set; }
    }
}
