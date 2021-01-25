using Application.DTO.Food;
using Application.Interfaces;
using AutoMapper;
using Persistance.Interfaces;
using Domain.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Services
{
    public class FoodService : IFoodService
    {
        private readonly IMapper _mapper;
        private readonly IRepository<Food> _repository;
        public FoodService(IMapper mapper, IRepository<Food> repository)
        {
            _mapper = mapper;
            _repository = repository;
        }
        public async Task<IEnumerable<FoodDto>> GetAll()
        {
            var food = await _repository.GetAllAsync();
            var foodDto = food.Select(a => _mapper.Map<FoodDto>(a));
            return foodDto;
        }
    }
}
