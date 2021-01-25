using Application.DTO.Defect;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DefectController : ControllerBase
    {
        private readonly IDefectService _defectService;
        public DefectController(IDefectService defectService)
        {
            _defectService = defectService;
        }

        // GET: api/Defect
        [HttpGet]
        public async Task<IEnumerable<DefectDto>> GetDefects()
        {
            return await _defectService.GetAllDefects();
        }

        // GET: api/Defect/5
        [HttpGet("{id}")]
        public async Task<ActionResult<DefectDto>> GetDefect(long id)
        {
            var defect = await _defectService.GetDefectById(id);

            if (defect == null)
            {
                return NotFound();
            }

            return defect;
        }

        // PUT: api/Defect/1
        [HttpPut("{id}")]
        public async Task<ActionResult> PutDefect(long id, [FromBody]DefectDto defect)
        {
            if (id != defect.Id)
            {
                return BadRequest();
            }

            await _defectService.UpdateDefect(defect);
            return Ok();
        }

        // POST: api/Defect
        [HttpPost]
        public async Task<ActionResult> PostDefect([FromBody]DefectForCreationDto defect)
        {
            await _defectService.CreateDefect(defect);

            return Ok();
        }

        // DELETE: api/Defect/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<DefectDto>> DeleteDefect(long id)
        {
            var defect = await _defectService.GetDefectById(id);
            if (defect == null)
            {
                return NotFound();
            }

            await _defectService.DeleteDefect(id);

            return defect;
        }
    }
}