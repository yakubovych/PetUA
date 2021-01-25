using Application.DTO.AdoptBookRequest;
using Application.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Threading.Tasks;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AdoptBookRequestController : Controller
    {
        private readonly IAdoptBookRequestService _adoptBookRequestService;
        public AdoptBookRequestController(IAdoptBookRequestService adoptBookRequestService)
        {
            _adoptBookRequestService = adoptBookRequestService;
        }
        [HttpGet]
        [Authorize]
        public async Task<ActionResult<AdoptBookRequest>> GetAll()
        {
            try
            {
                var adoptBookRequests = await _adoptBookRequestService.GetAllAdoptBookRequestAsync();
                return Ok(adoptBookRequests);

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [HttpGet]
        [Authorize(Roles = "SuperAdmin,Admin")]
        [Route("GetDeclinedOrderOfUser")]
        public async Task<ActionResult<AdoptBookRequest>> GetAllDeclined(string userEmail)
        {
            try
            {
                var adoptBookRequests = await _adoptBookRequestService.GetAllAdoptBookDeclinedRequestAsync(userEmail);
                return Ok(adoptBookRequests);

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [HttpDelete]
        [Authorize]
        public async Task<IActionResult> DeleteAdoptBookRequest(AdoptBookRequestForDelete adoptBookRequest)
        {
            try
            {
                await _adoptBookRequestService.DeleteAdoptBookRequest(adoptBookRequest);
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}