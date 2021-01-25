using Microsoft.AspNetCore.Http;

namespace Application.DTO.Animal
{
    public class AnimalImageForCreationDto
    {
        public IFormFile ImageData { get; set; }
    }
}
