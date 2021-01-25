using Application.DTO.Category;
using Application.Interfaces;
using AutoMapper;
using Persistance.Interfaces;
using Domain.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Services
{
    public class CategoryService : ICategoryService
    {
        private readonly IRepository<Category> _categoryRepository;
        private readonly IMapper _mapper;
        public CategoryService(IRepository<Category> repository, IMapper mapper)
        {
            _categoryRepository = repository;
            _mapper = mapper;
        }
        public async Task<IEnumerable<CategoryDto>> GetAllCategories()
        {
            var categories = await _categoryRepository.GetAllAsync();
            var categoriesDto = categories.Select(a => _mapper.Map<CategoryDto>(a));
            return categoriesDto;
        }
    }
}
