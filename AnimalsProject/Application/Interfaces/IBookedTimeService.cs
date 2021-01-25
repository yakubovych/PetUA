using Domain.Models;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IBookedTimeService
    {
        Task UpdateBookedTime(IEnumerable<BookOrder> bookOrders);
        Task UpdateBookedTime(BookOrder bookOrder);

    }
}
