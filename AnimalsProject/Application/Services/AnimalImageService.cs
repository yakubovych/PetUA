using Application.Exceptions;
using Application.Interfaces;
using Domain.Models;
using Microsoft.AspNetCore.Http;
using Persistance.Interfaces;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Services
{
    public class AnimalImageService : IImageService
    {
        private readonly IRepository<Image> _imageRepository;
        private readonly IRepository<Animal> _animalRepository;
        private readonly IBlobService _blobService;
        public AnimalImageService(IRepository<Image> imageRepository, IBlobService blobService,
            IRepository<Animal> animalRepository)
        {
            _imageRepository = imageRepository;
            _blobService = blobService;
            _animalRepository = animalRepository;
        }

        public async Task CreateImagesWithExistingAnimal(IList<IFormFile> images, long animalId)
        {
            foreach (var image in images)
            {
                await CreateImageWithExistingAnimal(image, animalId);
            }
        }

        public Task CreateImageWithExistingAnimal(long animalId, string filePath, string fileName)
        {
            throw new NotImplementedException();
        }

        public async Task CreateImageWithExistingAnimal(IFormFile image, long animalId)
        {
            var isExist = _animalRepository.Find(x => x.Id == animalId);
            if (isExist == null)
            {
                throw new ObjectNotFoundException(nameof(animalId), "animal not found");
            }
            var Url = await _blobService.UploadFileBlobAsync(image);
            var imageDb = new Image
            {
                ImageData = Url,
                AnimalId = animalId,
                FileName = image.FileName
            };
            await _imageRepository.AddAsync(imageDb);
        }

        public async Task Delete(long imageId)
        {
            var image = await _imageRepository.GetByIdAsync(imageId);
            if (image == null)
            {
                throw new ObjectNotFoundException(nameof(imageId), "image not found");
            }
            await _imageRepository.Remove(image);
            await _blobService.DeleteBlobAsync(image.FileName);
        }
    }
}

