using Application.DTO.AdoptBookRequest;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IAdoptBookRequestService
    {
        Task<IEnumerable<AdoptBookRequest>> GetAllAdoptBookRequestAsync();
        Task DeleteAdoptBookRequest(AdoptBookRequestForDelete adoptBookRequest);
        Task<IEnumerable<AdoptBookRequest>> GetAllAdoptBookDeclinedRequestAsync(string userEmail);
    }
}
