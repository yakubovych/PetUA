using System;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StatusController : ControllerBase
    {
        private readonly IStatusService _service;

        public StatusController(IStatusService service)
        {
            _service = service;
        }

        [HttpGet]
        [Route("GetAllOrderStatuses")]
        public  Array GetOrderStatuses()
        {
            return  _service.GetAllOrderStatuses();
        }

        [HttpGet]
        [Route("GetAllAnimalStatuses")]
        public Array GetAnimalStatuses()
        {
            return  _service.GetAllAnimalStatuses();
        }
    }
}