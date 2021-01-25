using Application.DTO.Order;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IOrderService
    {
        Task CreateAdoptOrder(OrderForCreationDto order);
        Task CreateBookOrder(OrderForCreationDto order);
    }
}
