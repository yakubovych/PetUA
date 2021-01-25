using Application.DTO.Breed;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BreedController : ControllerBase
    {
        private readonly IBreedService _breedService;
        public BreedController(IBreedService breedService)
        {
            _breedService = breedService;
        }

        // GET: api/Breeds
        [HttpGet]
        public async Task<IEnumerable<BreedDto>> GetBreeds()
        {
            return await _breedService.GetAllBreeds();
        }

        // PUT: api/Breed/1
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpPut("{id}")]
        public async Task<ActionResult> PutBreed(long id, [FromBody]BreedDto breed)
        {
            if (id != breed.Id)
            {
                return BadRequest();
            }

            await _breedService.UpdateBreed(breed);
            return Ok();
        }

        // POST: api/Breed
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpPost]
        public async Task<ActionResult> PostBreed([FromBody]BreedForCreationDto breed)
        {
            await _breedService.CreateBreed(breed);

            return Ok();
        }

        // DELETE: api/Breed/5
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpDelete("{id}")]
        public async Task<ActionResult<BreedDto>> Deletebreed(long id)
        {
            var breed = await _breedService.GetBreedById(id);
            if (breed == null)
            {
                return NotFound();
            }

            await _breedService.DeleteBreed(id);

            return breed;
        }
    }
}