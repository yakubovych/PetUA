using System;

namespace Application.DTO.AdoptBookRequest
{
    public class AdoptBookRequest
    {
        public long Id { get; set; }
        public string PetName { get; set; }
        public long AnimalId { get; set; }
        public string Type { get; set; }
        public DateTime Created { get; set; }
        public string Status { get; set; }
        public string AdminComment { get; set; }
        public string UserMotivation { get; set; }
    }
}
