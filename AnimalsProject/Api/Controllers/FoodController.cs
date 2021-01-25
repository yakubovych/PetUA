using System.Collections.Generic;
using System.Threading.Tasks;
using Application.DTO.Food;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FoodController : ControllerBase
    {
        private readonly IFoodService _service;
        public FoodController(IFoodService service)
        {
            _service = service;
        }

        // GET: api/Food
        [HttpGet]
        public async Task<IEnumerable<FoodDto>> GetAll()
        {
            return await _service.GetAll();
        }
    }
}