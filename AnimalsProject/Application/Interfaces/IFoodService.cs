using Application.DTO.Food;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IFoodService
    {
        Task<IEnumerable<FoodDto>> GetAll();
    }
}
