using Application.DTO.AdoptOrder;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IAdoptOrderService
    {
        Task<IEnumerable<AdoptOrderDto>> GetAllAdoptOrders();
        IEnumerable<AdoptOrderDto> GetAllApprovedAdoptOrders();
        IEnumerable<AdoptOrderDto> GetAllPendingAdoptOrders();
        IEnumerable<AdoptOrderDto> GetAllAdoptOrdersByUserId(string id);
        Task<AdoptOrderDto> GetById(long id);
        Task ApproveAdoptOrder(AdoptOrderForApproveDto order);
        Task ApproveFinalyAdoptOrder(AdoptOrderForApproveFinalyDto order);
        Task Delete(long id);
        Task DeclineAdoptOrder(AdoptOrderForDeclineDto order);
    }
}
