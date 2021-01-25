using Application.DTO.Order;
using Application.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class OrderController : ControllerBase
    {
        private readonly IOrderService _service;
        public OrderController(IOrderService service)
        {
            _service = service;
        }
        [Authorize]
        [HttpPost]
        [Route("CreateAdoptOrder")]
        public async Task<ActionResult> CreateAdoptOrder(OrderForCreationDto order)
        {
            try
            {
                if (order == null)
                    return BadRequest();
                await _service.CreateAdoptOrder(order);
                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize]
        [HttpPost]
        [Route("CreateBookOrder")]
        public async Task<ActionResult> CreateBookOrder(OrderForCreationDto order)
        {
            try
            {
                if (order == null)
                    return BadRequest();
                await _service.CreateBookOrder(order);
                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}