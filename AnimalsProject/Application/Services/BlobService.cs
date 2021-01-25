using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Persistance.Extension;
using Application.Interfaces;
using Azure.Storage.Blobs;
using Azure.Storage.Blobs.Models;
using Domain.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.Net.Http.Headers;
using Azure.Storage.Blobs.Specialized;
using Microsoft.Extensions.Configuration;

namespace Application.Services
{
    public class BlobService : IBlobService
    {
        private readonly BlobServiceClient _blobServiceClient;
        private readonly IConfiguration _configuration;
        public BlobService(BlobServiceClient blobServiceClient, IConfiguration configuration)
        {
            _blobServiceClient = blobServiceClient;
            _configuration = configuration;
        }
        
        public async Task<BlobInfoDto> GetBlobsAsync(string name)
        {
            var containerClient = _blobServiceClient.GetBlobContainerClient("videos");
            var blobClient = containerClient.GetBlobClient(name);
            var blobDownloadInfo = await blobClient.DownloadAsync();
            return new BlobInfoDto(blobDownloadInfo.Value.Content, blobDownloadInfo.Value.ContentType);
        }
        public async Task<IEnumerable<string>> ListBlobAsync()
        {
            var containerClient = _blobServiceClient.GetBlobContainerClient(_configuration["AzureBlobName"]);
            var items = new List<string>();
            await foreach(var blobItem in containerClient.GetBlobsAsync())
            {
                items.Add(blobItem.Name);
            }

            return items;
        }
        public async Task<string> UploadFileBlobAsync(string filePath, string fileName)
        {
            var containerClient = _blobServiceClient.GetBlobContainerClient(_configuration["AzureBlobName"]);
            var blobClient = containerClient.GetBlobClient(fileName);
            using (var fileStream = System.IO.File.OpenRead($@"{filePath}"))
            {
                await blobClient.UploadAsync(fileStream, new BlobHttpHeaders { ContentType = filePath.GetContentType() });
            }
            return blobClient.Uri.AbsoluteUri;
        }
        public async Task DeleteBlobAsync(string blobName)
        {
            var containerClient = _blobServiceClient.GetBlobContainerClient(_configuration["AzureBlobName"]);
            var blobClient = containerClient.GetBlobClient(blobName);
            await blobClient.DeleteIfExistsAsync();
        }

        public async Task<string> UploadFileBlobAsync(IFormFile video)
        {
            var containerClient = _blobServiceClient.GetBlobContainerClient(_configuration["AzureBlobName"]);
            var containerDisposition = ContentDispositionHeaderValue.Parse(video.ContentDisposition);
            var fileName = containerDisposition.FileName.Trim().ToString();
            var blockBlob = containerClient.GetBlockBlobClient(fileName);
            await blockBlob.UploadAsync(video.OpenReadStream(), new BlobHttpHeaders { ContentType = video.ContentType });
            return blockBlob.Uri.AbsoluteUri;
        }
    }
}
