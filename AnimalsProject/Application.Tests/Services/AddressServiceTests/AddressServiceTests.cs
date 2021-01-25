using Application.DTO.Address;
using Application.Interfaces;
using Application.Services;
using AutoMapper;
using Domain.Models;
using Moq;
using Newtonsoft.Json;
using NUnit.Framework;
using Persistance.Interfaces;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Tests.Services
{
    [TestFixture]
    public class AddressServiceTests
    {
        private IAddressService _service;
        private IMapper _mapper;
        private Mock<IRepository<Address>> _addressRepositoryMock;

        [SetUp]
        public void SetUp()
        {
            _mapper = Mapper.GetMapper;
            _addressRepositoryMock = new Mock<IRepository<Address>>();
            _service = new AddressService(_addressRepositoryMock.Object, _mapper);
        }

        [Test]
        public async Task GetAddresses_ReturnValueEqualsExpected_Success()
        {
            var expected = GetTestData();
            var value = expected.Select(x => _mapper.Map<Address>(x));
            _addressRepositoryMock.Setup(x => x.GetAllAsync()).ReturnsAsync(value);

            var actual = await _service.GetAllAddresses();

            var expectedSer = JsonConvert.SerializeObject(expected);
            var actualSer = JsonConvert.SerializeObject(actual);
            Assert.AreEqual(expectedSer, actualSer);
        }

        private IEnumerable<AddressDto> GetTestData()
        {
            var expected = new List<AddressDto>
            {
                new AddressDto()
                {
                    Id = 1,
                    Name = "test1"
                },
                new AddressDto()
                {
                    Id = 2,
                    Name = "test2"
                }
            };
            return expected;
        }
    }
}
