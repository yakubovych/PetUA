using System.Collections.Generic;
using System.Threading.Tasks;
using Application.DTO.Address;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AddressController : ControllerBase
    {
        private readonly IAddressService _addressService;
        public AddressController(IAddressService addressService)
        {
            _addressService = addressService;
        }

        // GET: api/Address
        [HttpGet]
        public async Task<IEnumerable<AddressDto>> GetAddresses()
        {
            return await _addressService.GetAllAddresses();
        }
    }
}