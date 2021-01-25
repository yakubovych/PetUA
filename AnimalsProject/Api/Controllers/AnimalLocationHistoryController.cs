using System;
using System.Collections.Generic;
using Application.DTO.Animal;
using Application.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Authorize(Roles="SuperAdmin,Admin")]
    [Route("api/[controller]")]
    [ApiController]
    public class AnimalLocationHistoryController : ControllerBase
    {
        private readonly IAnimalLocationHistoryService _service;

        public AnimalLocationHistoryController(IAnimalLocationHistoryService service)
        {
            _service = service;
        }

        [HttpGet("get/{animalId}")]
        public ActionResult<IEnumerable<AnimalLocationHistoryDto>> GetAnimanlLocationHistory(long animalId)
        {
            try
            {
                var history = _service.GetAnimalLocationHistory(animalId);
                return Ok(history);
            }
            catch (ArgumentException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}