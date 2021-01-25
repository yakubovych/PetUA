using Application.Interfaces;
using Persistance.Interfaces;
using Domain.Models;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;

namespace Application.Services
{
    public class VideoService : IVideoService
    {
        private readonly IRepository<AnimalVideo> _videoRepository;
        private readonly IRepository<Animal> _animalRepository;
        private readonly IBlobService _blobService;
        public VideoService(IRepository<AnimalVideo> videoRepository, IBlobService blobService,
            IRepository<Animal> animalRepository)
        {
            _videoRepository = videoRepository;
            _blobService = blobService;
            _animalRepository = animalRepository;
        }

        public async Task CreateVideosWithExistingAnimal(IList<IFormFile> videos, long animalId)
        {
            foreach (var video in videos)
            {
                await CreateVideoWithExistingAnimal(video, animalId);
            }
        }

        public async Task CreateVideoWithExistingAnimal(long animalId, string filePath, string fileName)
        {
            var isExist = _animalRepository.Find(x => x.Id == animalId);
            if (isExist == null)
            {
                throw new ArgumentNullException(nameof(animalId), "animal not found");
            }
            var Url = await _blobService.UploadFileBlobAsync(filePath, fileName);
            var video = new AnimalVideo
            {
                Url = Url,
                AnimalId = animalId,
                FileName = fileName
            };
            await _videoRepository.AddAsync(video);
        }

        public async Task CreateVideoWithExistingAnimal(IFormFile video, long animalId)
        {
            var isExist = _animalRepository.Find(x => x.Id == animalId);
            if (isExist == null)
            {
                throw new ArgumentNullException(nameof(animalId), "animal not found");
            }
            var Url = await _blobService.UploadFileBlobAsync(video);
            var videoDb = new AnimalVideo
            {
                Url = Url,
                AnimalId = animalId,
                FileName = video.FileName
            };
            await _videoRepository.AddAsync(videoDb);
        }

        public async Task Delete(long videoId)
        {
            var video = await _videoRepository.GetByIdAsync(videoId);
            if (video == null)
            {
                throw new ArgumentNullException(nameof(videoId), "video not found");
            }
            await _videoRepository.Remove(video);
            await _blobService.DeleteBlobAsync(video.FileName);
        }
    }
}
