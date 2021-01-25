using Application.DTO.Attitude;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AttitudeToController : ControllerBase
    {
        private readonly IAttitudeToService _attitudeToService;
        public AttitudeToController(IAttitudeToService attitudeToService)
        {
            _attitudeToService = attitudeToService;
        }

        // GET: api/AttitudeTo
        [HttpGet]
        public async Task<IEnumerable<AttitudeToDto>> GetAttitudes()
        {
            return await _attitudeToService.GetAllAttitudes();
        }
    }
}