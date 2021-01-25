using Application.DTO.Category;
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
    public class CategoryServiceTests
    {
        private ICategoryService _service;
        private IMapper _mapper;
        private Mock<IRepository<Category>> _categoryRepositoryMock;

        [SetUp]
        public void SetUp()
        {
            _mapper = Mapper.GetMapper;
            _categoryRepositoryMock = new Mock<IRepository<Category>>();
            _service = new CategoryService(_categoryRepositoryMock.Object, _mapper);
        }

        [Test]
        public async Task GetCategories_ReturnValueEqualsExpected_Success()
        {
            var expected = GetTestData();
            var value = expected.Select(x => _mapper.Map<Category>(x));
            _categoryRepositoryMock.Setup(x => x.GetAllAsync()).ReturnsAsync(value);

            var actual = await _service.GetAllCategories();

            var expectedSer = JsonConvert.SerializeObject(expected);
            var actualSer = JsonConvert.SerializeObject(actual);
            Assert.AreEqual(expectedSer, actualSer);
        }

        private IEnumerable<CategoryDto> GetTestData()
        {
            var expected = new List<CategoryDto>
            {
                new CategoryDto()
                {
                    Id = 1,
                    Name = "test1"
                },
                new CategoryDto()
                {
                    Id = 2,
                    Name = "test2"
                }
            };
            return expected;
        }
    }
}
