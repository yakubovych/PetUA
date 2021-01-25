using Microsoft.AspNetCore.Http;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IImageService
    {
        Task CreateImageWithExistingAnimal(long animalId, string filePath, string fileName);
        Task CreateImageWithExistingAnimal(IFormFile image, long animalId);
        Task CreateImagesWithExistingAnimal(IList<IFormFile> images, long animalId);
        Task Delete(long imageId);
    }
}
