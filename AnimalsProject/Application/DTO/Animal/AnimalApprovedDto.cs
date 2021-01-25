using System.Collections.Generic;

namespace Application.DTO.Animal
{
    public class AnimalApprovedDto
    {
        public AnimalApprovedDto()
        {
            Images = new HashSet<ImageDto>();
        }
        public long Id { get; set; }
        public string Comment { get; set; }
        public HashSet<ImageDto> Images { get; set; }
    }
}

