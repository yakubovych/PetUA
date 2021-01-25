using Application.ActionFilter;
using Application.DTO.Animal;
using Application.Exceptions;
using Application.Filters;
using Application.Interfaces;
using Application.Validators.ModelValidators;
using Domain.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Api.Controllers
{

    [Route("api/[controller]")]
    [ApiController]
    public class AnimalController : ControllerBase
    {
        private readonly IAnimalService _animalService;

        public AnimalController(IAnimalService animalService)
        {
            _animalService = animalService;
        }

        [HttpGet]
        [Route("GetAllAnimalsIncludeValues")]
        public ActionResult<Pagination<IEnumerable<AnimalDto>>> Get([FromQuery] AnimalFilter getAllAnimalPostFilter = null
            , [FromQuery] AnimalPaginationFilter pagination = null)
        {
            try
            {
                var animals = _animalService.GetAllAnimals(getAllAnimalPostFilter, pagination);
                return Ok(animals);
            }
            catch (Exception ex)
            {
                //log error
                return BadRequest(ex.Message);
            }

        }
        [HttpGet]
        [Route("Get")]
        public ActionResult<Pagination<IEnumerable<AnimalIncludeValuesDto>>> GetAllAnimalsIncludeValues([FromQuery] AnimalFilter getAllAnimalPostFilter = null
          , [FromQuery] AnimalPaginationFilter pagination = null)
        {
            try
            {
                var animals = _animalService.GetAllAnimalsIncludeValues(getAllAnimalPostFilter, pagination);
                return Ok(animals);
            }
            catch (Exception ex)
            {
                //log error
                return BadRequest(ex.Message);
            }

        }
        [HttpGet]
        [Route("GetAllAdoptedAnimals")]
        public async Task<ActionResult<IEnumerable<AnimalDto>>> GetAllAdoptedAnimals()
        {
            try
            {
                var animals = await _animalService.GetAllAdoptedAnimals();
                return Ok(animals);
            }
            catch (Exception ex)
            {
                //log error
                return BadRequest(ex.Message);
            }
        }

        [HttpGet]
        [Route("GetAllHiddenAnimals")]
        public async Task<ActionResult<IEnumerable<AnimalDto>>> GetAllHiddenAnimals()
        {
            try
            {
                var animals = await _animalService.GetAllHiddenAnimals();
                return Ok(animals);
            }
            catch (Exception ex)
            {
                //log error
                return BadRequest(ex.Message);
            }
        }
        [HttpGet]
        [Route("[action]/{id}")]
        [TypeFilter(typeof(AnimalStatisticFilter))]
        public ActionResult<AnimalDto> GetAnimal(long id)
        {
            try
            {
                var animal =  _animalService.GetById(id);
                return Ok(animal);
            }
            catch (Exception ex)
            {
                //log error
                return NotFound(ex);
            }
        }
        
        [HttpGet]
        [Route("[action]/{id}")]
        [TypeFilter(typeof(AnimalStatisticFilter))]
        public ActionResult<AnimalIncludeValuesDto> GetAnimalIncludeValues(long id)
        {
            try
            {
                var animal =  _animalService.GetByIdIncludeValues(id);
                return Ok(animal);
            }
            catch (Exception ex)
            {
                //log error
                return NotFound(ex.Message);
            }
        }
        [HttpGet]
        [Route("[action]/{id}")]
        [TypeFilter(typeof(AnimalStatisticFilter))]
        public async Task<ActionResult<AnimalDto>> GetRecommended(long id)
        {
            try
            {
                var animal =  _animalService.GetByIdIncludeValues(id);
                var animals = await _animalService.GetRecommendedPets(animal);
                AnimalRecommended mainAndRecommendedPets = new AnimalRecommended() { mainAnimal = animal, recommendedAnimals = animals };
                return Ok(mainAndRecommendedPets);
            }
            catch (Exception ex)
            {
                //log error
                return NotFound(ex.Message);
            }
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpPut("{id}")]
        public async Task<ActionResult<AnimalDto>> Update(long id, [FromBody]AnimalDto animalModel)
        {
            if (id != animalModel.Id)
                return BadRequest();
            try
            {
                var animal = await _animalService.UpdateAnimal(animalModel);
                return Ok(animal);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [HttpPut]
        [Route("[action]/{id}")]
        public async Task<ActionResult> UpdateApprovedAnimal(long id, [FromBody]AnimalApprovedDto animalModel)
        {
            if (id != animalModel.Id)
                return BadRequest();
            try
            {
                await _animalService.UpdateApprovedAnimal(animalModel);
                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpPost]
        public async Task<ActionResult<AnimalDto>> Create([FromBody]AnimalForCreationDto animalModel)
        {
            try
            {
                if (animalModel == null)
                    return BadRequest();
                new AnimalModelValidator(animalModel).ValidateModel();
                var animal = await _animalService.CreateAnimal(animalModel);
                return Ok(animal);
            }
            catch (ValidationException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpDelete("{id}")]
        public async Task<ActionResult<AnimalDto>> DeleteBook(int id)
        {
            try
            {
                var animal = await _animalService.Delete(id);
                return Ok(animal);
            }
            catch (Exception ex)
            {
                return NotFound(ex.Message);
            }
        }

        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet]
        [Route("[action]/{id}")]
        public async Task<ActionResult<AnimalStatisticDto>> GetStatistic(long id)
        {
            try
            {
                var animalStatistic = await _animalService.GetStatistc(id);
                return Ok(animalStatistic);
            }
            catch (Exception ex)
            {
                return NotFound(ex.Message);
            }
        }

        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet("get-animals-booking-time-remaining")]
        public async Task<ActionResult<IEnumerable<AnimalBookingTimeDto>>> GetAnimalsBookingTimeRemaining()
        {
            try
            {
                var bookedAnimals = await _animalService.GetAnimalsBookingTime();
                return Ok(bookedAnimals);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}