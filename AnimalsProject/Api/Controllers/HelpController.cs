using System.Collections.Generic;
using System.Threading.Tasks;
using Application.DTO.Help;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HelpController : ControllerBase
    {
        private readonly IHelpService _service;
        public HelpController(IHelpService service)
        {
            _service = service;
        }

        [HttpGet]
        public async Task<IEnumerable<HelpDto>> GetHelps()
        {
            return await _service.GetAll();
        }
    }
}