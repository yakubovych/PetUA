using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Application.DTO.AdoptOrder;
using Application.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AdoptOrderController : ControllerBase
    {
        private readonly IAdoptOrderService _adoptOrderService;

        public AdoptOrderController(IAdoptOrderService adoptOrderService)
        {
            _adoptOrderService = adoptOrderService;
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpPost]
        [Route("AppoveAdoptOrder")]
        public async Task<ActionResult> AppoveAdoptOrder(AdoptOrderForApproveDto adoptOrder)
        {
            if (adoptOrder == null)
            {
                return BadRequest();
            }
            try
            {
                await _adoptOrderService.ApproveAdoptOrder(adoptOrder);
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpPost]
        [Route("AppoveFinalyAdoptOrder")]
        public async Task<ActionResult> AppoveFinalyAdoptOrder(AdoptOrderForApproveFinalyDto adoptOrder)
        {
            if (adoptOrder == null)
            {
                return BadRequest();
            }
            try
            {
                await _adoptOrderService.ApproveFinalyAdoptOrder(adoptOrder);
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpPost]
        [Route("DeclineAdoptOrder")]
        public async Task<ActionResult> DeclineAdoptOrder(AdoptOrderForDeclineDto adoptOrder)
        {
            if (adoptOrder == null)
            {
                return BadRequest();
            }
            try
            {
                await _adoptOrderService.DeclineAdoptOrder(adoptOrder);
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet]
        [Route("GetAllAdoptOrders")]
        public async Task<ActionResult<IEnumerable<AdoptOrderDto>>> GetAllAdoptkOrders()
        {
            try
            {
                var adoptOrders = await _adoptOrderService.GetAllAdoptOrders();
                if (adoptOrders.Count() != 0)
                    return Ok(adoptOrders);
                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet]
        [Route("GetAllApprovedAdoptOrders")]
        public ActionResult<IEnumerable<AdoptOrderDto>> GetAllApprovedAdoptOrders()
        {
            try
            {
                var adoptOrders =  _adoptOrderService.GetAllApprovedAdoptOrders();
                if (adoptOrders.Count() != 0)
                    return Ok(adoptOrders);
                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet]
        [Route("GetAllPendingAdoptOrders")]
        public ActionResult<IEnumerable<AdoptOrderDto>> GetAllPendingAdoptOrders()
        {
            try
            {
                var adoptOrders = _adoptOrderService.GetAllPendingAdoptOrders();
                if (adoptOrders.Count() != 0)
                    return Ok(adoptOrders);
                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize]
        [HttpGet]
        [Route("GetAllAdoptOrdersByUserId")]
        public ActionResult<AdoptOrderDto> GetAllAdoptOrdersByUserId(string id)
        {
            try
            {
                var adoptOrders = _adoptOrderService.GetAllAdoptOrdersByUserId(id);
                return Ok(adoptOrders);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [Authorize]
        [HttpGet]
        [Route("GetById")]
        public async Task<ActionResult<AdoptOrderDto>> GetById(long id)
        {
            try
            {
                var adoptOrders = await _adoptOrderService.GetById(id);
                return Ok(adoptOrders);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}