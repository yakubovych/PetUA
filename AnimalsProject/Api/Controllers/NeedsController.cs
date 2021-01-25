using System.Collections.Generic;
using System.Threading.Tasks;
using Application.DTO.Needs;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NeedsController : ControllerBase
    {
        private readonly INeedsService _service;
        public NeedsController(INeedsService service)
        {
            _service = service;
        }

        // GET: api/Needs
        [HttpGet]
        public async Task<IEnumerable<NeedsDto>> GetAll()
        {
            return await _service.GetAll();
        }
    }
}