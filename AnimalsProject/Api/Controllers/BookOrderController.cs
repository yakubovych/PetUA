using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Application.DTO.BookOrder;
using Application.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BookOrderController : ControllerBase
    {
        private readonly IBookOrderService _bookOrderService;

        public BookOrderController(IBookOrderService bookOrderService)
        {
            _bookOrderService = bookOrderService;
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpPost]
        [Route("AppoveBookOrder")]
        public async Task<ActionResult> AppoveBookOrder(BookOrderForApproveDto bookOrder)
        {
            if(bookOrder == null)
            {
                return BadRequest();
            }
            try
            {
                await _bookOrderService.ApproveBookOrder(bookOrder);
                return Ok();
            }
            catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpPost]
        [Route("DeclineBookOrder")]
        public async Task<ActionResult> DeclineAdoptOrder(BookOrderForDeclineDto adoptOrder)
        {
            if (adoptOrder == null)
            {
                return BadRequest();
            }
            try
            {
                await _bookOrderService.DeclineBookOrder(adoptOrder);
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet]
        [Route("GetAllBookOrders")]
        public async Task<ActionResult<IEnumerable<BookOrderDto>>> GetAllBookOrders()
        {
            try
            {
                var bookOrders = await _bookOrderService.GetAllBookOrders();
                if (bookOrders.Count() != 0)
                    return Ok(bookOrders);
                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet]
        [Route("GetAllApprovedBookOrders")]
        public async Task<ActionResult<IEnumerable<BookOrderDto>>> GetAllApprovedBookOrders()
        {
            try
            {
                var bookOrders = await _bookOrderService.GetAllApprovedBookOrders();
                if (bookOrders.Count() != 0)
                    return Ok(bookOrders);
                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet]
        [Route("GetAllPendingBookOrders")]
        public ActionResult<IEnumerable<BookOrderDto>> GetAllPendingBookOrders()
        {
            try
            {
                var bookOrders =  _bookOrderService.GetAllPendingBookOrders();
                if (bookOrders.Count() != 0)
                    return Ok(bookOrders);
                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [Authorize]
        [HttpGet]
        [Route("GetAllBookOrdersOfCurrentUser")]
        public ActionResult<IEnumerable<BookOrderDto>> GetAllBookOrdersOfCurrentUser()
        {
            try
            {
                var bookOrders = _bookOrderService.GetAllBookOrdersOfCurrentUser();
                if (bookOrders.Count() != 0)
                    return Ok(bookOrders);
                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize]
        [HttpGet]
        [Route("GetAllBookOrdersByUserId")]
        public ActionResult<BookOrderDto> GetAllBookOrdersByUserId(string id)
        {
            try
            {
                var bookOrders =  _bookOrderService.GetAllBookOrdersByUserId(id);
                return Ok(bookOrders);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [Authorize]
        [HttpGet]
        [Route("GetById")]
        public async Task<ActionResult<BookOrderDto>> GetById(long id)
        {
            try
            {
                var bookOrders = await _bookOrderService.GetById(id);
                return Ok(bookOrders);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}