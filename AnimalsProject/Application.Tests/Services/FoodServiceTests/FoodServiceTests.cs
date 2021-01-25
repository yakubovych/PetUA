using Application.DTO.Food;
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
    public class FoodServiceTests
    {
        private IFoodService _service;
        private IMapper _mapper;
        private Mock<IRepository<Food>> _foodRepositoryMock;

        [SetUp]
        public void SetUp()
        {
            _mapper = Mapper.GetMapper;
            _foodRepositoryMock = new Mock<IRepository<Food>>();
            _service = new FoodService(_mapper, _foodRepositoryMock.Object);
        }

        [Test]
        public async Task GetFood_ReturnValueEqualsExpected_Success()
        {
            var expected = GetTestData();
            var value = expected.Select(x => _mapper.Map<Food>(x));
            _foodRepositoryMock.Setup(x => x.GetAllAsync()).ReturnsAsync(value);

            var actual = await _service.GetAll();

            var expectedSer = JsonConvert.SerializeObject(expected);
            var actualSer = JsonConvert.SerializeObject(actual);
            Assert.AreEqual(expectedSer, actualSer);
        }

        private IEnumerable<FoodDto> GetTestData()
        {
            var expected = new List<FoodDto>
            {
                new FoodDto()
                {
                    Id = 1,
                    Name = "test1"
                },
                new FoodDto()
                {
                    Id = 2,
                    Name = "test2"
                }
            };
            return expected;
        }
    }
}
