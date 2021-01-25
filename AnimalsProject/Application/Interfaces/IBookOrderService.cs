using Application.DTO.BookOrder;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IBookOrderService
    {
        Task<IEnumerable<BookOrderDto>> GetAllBookOrders();
        Task<IEnumerable<BookOrderDto>> GetAllApprovedBookOrders();
        IEnumerable<BookOrderDto> GetAllPendingBookOrders();
        IEnumerable<BookOrderDto> GetAllBookOrdersOfCurrentUser();
        IEnumerable<BookOrderDto> GetAllBookOrdersByUserId(string id);
        Task<BookOrderDto> GetById(long id);
        Task ApproveBookOrder(BookOrderForApproveDto order);
        Task Delete(long id);
        Task DeclineBookOrder(BookOrderForDeclineDto order);
    }
}
