using System.Collections.Generic;
using System.Threading.Tasks;
using Application.DTO.VaccinationDtos;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VaccinationController : ControllerBase
    {
        private readonly IVaccinationService _service;
        public VaccinationController(IVaccinationService service)
        {
            _service = service;
        }

        // GET: api/Vaccination
        [HttpGet]
        public async Task<IEnumerable<VaccinationDto>> GetAll()
        {
            return await _service.GetAll();
        }

        // GET: api/Vaccination/5
        [HttpGet("{id}")]
        public async Task<ActionResult<VaccinationDto>> GetById(long id)
        {
            var vaccination = await _service.GetById(id);

            if (vaccination == null)
            {
                return NotFound();
            }

            return vaccination;
        }

        // PUT: api/Vaccination/1
        [HttpPut("{id}")]
        public async Task<ActionResult> Put(long id, [FromBody]VaccinationDto vaccination)
        {
            if (id != vaccination.Id)
            {
                return BadRequest();
            }

            await _service.Update(vaccination);
            return Ok();
        }

        // POST: api/Vaccination
        [HttpPost]
        public async Task<ActionResult> Post([FromBody]VaccinationForCreationDto vaccination)
        {
            await _service.Create(vaccination);

            return Ok();
        }

        // DELETE: api/Vaccination/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<VaccinationDto>> Delete(long id)
        {
            var vaccination = await _service.GetById(id);
            if (vaccination == null)
            {
                return NotFound();
            }

            await _service.Delete(id);

            return Ok(vaccination);
        }
    }
}