using System.Collections.Generic;
using System.Threading.Tasks;
using Application.DTO.Processing;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProcessingController : ControllerBase
    {
        private readonly IProcessingService _service;
        public ProcessingController(IProcessingService service)
        {
            _service = service;
        }

        // GET: api/Processing
        [HttpGet]
        public async Task<IEnumerable<ProcessingDto>> GetAll()
        {
            return await _service.GetAll();
        }
    }
}