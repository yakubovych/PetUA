using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Application.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VideoController : ControllerBase
    {
        private readonly IVideoService _videoService;
        public VideoController(IVideoService videoService)
        {
            _videoService = videoService;
        }

        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteVideo(int id)
        {
            try
            {
                await _videoService.Delete(id);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
            return Ok();
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [Route("CreateVideoWithExistingAnimal/{animalId}")]
        [HttpPost]
        public async Task<ActionResult> CreateVideoWithExistingAnimal(IFormFile video, long animalId)
        {
            try
            {
                await _videoService.CreateVideoWithExistingAnimal(video, animalId);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
            return Ok();
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [Route("CreateVideosWithExistingAnimal/{animalId}")]
        [HttpPost]
        public async Task<ActionResult> CreateImagesWithExistingAnimal(IList<IFormFile> videos, long animalId)
        {
            try
            {
                await _videoService.CreateVideosWithExistingAnimal(videos, animalId);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
            return Ok();
        }
    }
}
