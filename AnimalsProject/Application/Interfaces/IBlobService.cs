using Domain.Models;
using Microsoft.AspNetCore.Http;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IBlobService
    {
        Task<IEnumerable<string>> ListBlobAsync();
        Task<BlobInfoDto> GetBlobsAsync(string name);
        Task<string> UploadFileBlobAsync(string filePath, string fileName);
        Task<string> UploadFileBlobAsync(IFormFile video);
        Task DeleteBlobAsync(string blobName);
    }
}
