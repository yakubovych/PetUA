using Application.DTO.Animal;
using Application.DTO.Attitude;
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
    public class AttitudeToServiceTests
    {
        private IAttitudeToService _service;
        private IMapper _mapper;
        private Mock<IRepository<AttitudeTo>> _attitudeRepositoryMock;
        private Mock<IRepository<AnimalAttitudeTo>> _animalAttitudeToRepositoryMock;

        [SetUp]
        public void SetUp()
        {
            _mapper = Mapper.GetMapper;
            _attitudeRepositoryMock = new Mock<IRepository<AttitudeTo>>();
            _animalAttitudeToRepositoryMock = new Mock<IRepository<AnimalAttitudeTo>>();
            _service = new AttitudeToService(_attitudeRepositoryMock.Object, _animalAttitudeToRepositoryMock.Object, _mapper);
        }

        [Test]
        public async Task GetAll_ReturnValueEqualsExpected_Success()
        {
            var expected = GetTestData();
            var value = expected.Select(x => _mapper.Map<AttitudeTo>(x));
            _attitudeRepositoryMock.Setup(x => x.GetAllAsync()).ReturnsAsync(value);

            var actual = await _service.GetAllAttitudes();

            var expectedSer = JsonConvert.SerializeObject(expected);
            var actualSer = JsonConvert.SerializeObject(actual);
            Assert.AreEqual(expectedSer, actualSer);
        }

        [Test]
        public async Task CreateAnimalWithAttitudes_Success()
        {
            var animal = new AnimalForCreationDto()
            {
                Attitudes = new HashSet<AttitudeToDto>()
                {
                    new AttitudeToDto()
                    {
                        Id = 1
                    }
                }
            };
            var animalAttitude = new HashSet<AnimalAttitudeTo>()
            {
                new AnimalAttitudeTo()
                {
                    Animal = new Animal()
                    {
                        Id = 1
                    },
                    AnimalId = 1,
                    AttitudeId = 1,
                    AttitudeTo = new AttitudeTo()
                    {
                        Id = 1
                    }
                }
            };
            var model = new Animal() { Id = 1 };
            _animalAttitudeToRepositoryMock.Setup(x => x.TryCreateManyToMany(animalAttitude));
            _animalAttitudeToRepositoryMock.Setup(x => x.SaveAsync());

            await _service.CreateAnimalWithAttitudes(animal, model);

            _animalAttitudeToRepositoryMock.Verify(x => x.TryCreateManyToMany(It.IsAny<IEnumerable<AnimalAttitudeTo>>()),
                Times.Once());
            _animalAttitudeToRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        [Test]
        public async Task UpdateAnimalWithAttitudes_Success()
        {
            var animal = new AnimalDto()
            {
                Id = 1
            };
            var animalAttitude = new HashSet<AnimalAttitudeTo>()
            {
                new AnimalAttitudeTo()
                {
                    Animal = new Animal()
                    {
                        Id = 1
                    },
                    AnimalId = 1,
                    AttitudeId = 1,
                    AttitudeTo = new AttitudeTo()
                    {
                        Id = 1
                    }
                }
            };
            var model = new Animal() { Id = 1 };
            var func = new System.Func<AnimalAttitudeTo, long>(x => x.AttitudeId);
            var func2 = new System.Func<AnimalAttitudeTo, int>(x => x.Mark);
            _animalAttitudeToRepositoryMock.Setup(x => x.TryUpdateManyToMany(animalAttitude,
                animalAttitude, func, func2));
            _animalAttitudeToRepositoryMock.Setup(x => x.SaveAsync());

            await _service.UpdateAnimalWithAttitudes(animal, model);

            _animalAttitudeToRepositoryMock.Verify(x => x.TryUpdateManyToMany(It.IsAny<IEnumerable<AnimalAttitudeTo>>(),
                It.IsAny<IEnumerable<AnimalAttitudeTo>>(),
                It.IsAny<System.Func<AnimalAttitudeTo, long>>(),
                It.IsAny<System.Func<AnimalAttitudeTo, int>>()),
                Times.Once());
            _animalAttitudeToRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        private IEnumerable<AttitudeToDto> GetTestData()
        {
            var expected = new List<AttitudeToDto>
            {
                new AttitudeToDto()
                {
                    Id = 1,
                    Name = "test1"
                },
                new AttitudeToDto()
                {
                    Id = 2,
                    Name = "test2"
                }
            };
            return expected;
        }
    }
}
