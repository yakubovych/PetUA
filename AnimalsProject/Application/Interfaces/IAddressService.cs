using Application.DTO.Address;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IAddressService
    {
        Task<IEnumerable<AddressDto>> GetAllAddresses();
    }
}
