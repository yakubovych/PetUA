using Microsoft.AspNetCore.Http;

namespace Application.DTO.Animal
{
    public class AnimalVideoForCreationDto
    {
        public IFormFile VideoFile { get; set; }
    }
}
