using Microsoft.AspNetCore.Http;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IVideoService
    {
        Task CreateVideoWithExistingAnimal(long animalId, string filePath, string fileName);
        Task CreateVideoWithExistingAnimal(IFormFile video, long animalId);
        Task CreateVideosWithExistingAnimal(IList<IFormFile> videos, long animalId);
        Task Delete(long videoId);
    }
}
