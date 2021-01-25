using System.Collections.Generic;
using System.Threading.Tasks;
using Application.DTO.Category;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoryController : ControllerBase
    {
        private readonly ICategoryService _service;
        public CategoryController(ICategoryService service)
        {
            _service = service;
        }

        // GET: api/Category
        [HttpGet]
        public async Task<IEnumerable<CategoryDto>> GetCategories()
        {
            return await _service.GetAllCategories();
        }
    }
}