using Application.DTO.Address;
using Application.Interfaces;
using AutoMapper;
using Persistance.Interfaces;
using Domain.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Services
{
    public class AddressService : IAddressService
    {
        private readonly IRepository<Address> _addressRepository;
        private readonly IMapper _mapper;
        public AddressService(IRepository<Address> addressRepository, IMapper mapper)
        {
            _addressRepository = addressRepository;
            _mapper = mapper;
        }
        public async Task<IEnumerable<AddressDto>> GetAllAddresses()
        {
            var addresses = await _addressRepository.GetAllAsync();
            var addressesDto = addresses.Select(a => _mapper.Map<AddressDto>(a));
            return addressesDto;
        }
    }
}
