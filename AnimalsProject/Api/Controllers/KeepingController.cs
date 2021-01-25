using System.Collections.Generic;
using System.Threading.Tasks;
using Application.DTO.Keeping;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class KeepingController : ControllerBase
    {
        private readonly IKeepingService _service;
        public KeepingController(IKeepingService service)
        {
            _service = service;
        }

        // GET: api/Keeping
        [HttpGet]
        public async Task<IEnumerable<KeepingDto>> GetAll()
        {
            return await _service.GetAll();
        }
    }
}