using System.Threading.Tasks;
using Application.DTO.Description;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;


namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DescriptionController : ControllerBase
    {
        private readonly IDescriptionService _descriptionService;
        public DescriptionController(IDescriptionService descriptionService)
        {
            _descriptionService = descriptionService;
        }
        [HttpGet("{id}")]
        public async Task<ActionResult<DescriptionDto>> GetDescription(long id)
        {
            var defect = await _descriptionService.GetDescriptionById(id);

            if (defect == null)
            {
                return NotFound();
            }

            return defect;
        }
        [HttpPut("{id}")]
        public async Task<ActionResult> PutDescription(long id, [FromBody]DescriptionDto description)
        {
            if (id != description.Id)
            {
                return BadRequest();
            }

            await _descriptionService.UpdateDescription(description);
            return Ok();
        }
        [HttpDelete("{id}")]
        public async Task<ActionResult<DescriptionDto>> DeleteDefect(long id)
        {
            var defect = await _descriptionService.GetDescriptionById(id);
            if (defect == null)
            {
                return NotFound();
            }

            await _descriptionService.Delete(id);

            return defect;
        }
    }
}
