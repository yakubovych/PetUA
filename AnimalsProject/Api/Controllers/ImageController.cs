using Application.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ImageController : ControllerBase
    {
        private readonly IImageService _imageService;
        public ImageController(IImageService imageService)
        {
            _imageService = imageService;
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [Route("CreateImagesWithExistingAnimal/{animalId}")]
        [HttpPost]
        public async Task<ActionResult> CreateImagesWithExistingAnimal(IList<IFormFile> images, long animalId)
        {
            try
            {
                await _imageService.CreateImagesWithExistingAnimal(images, animalId);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
            return Ok();
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteImage(int id)
        {
            try
            {
                await _imageService.Delete(id);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
            return Ok();
        }
    }
}