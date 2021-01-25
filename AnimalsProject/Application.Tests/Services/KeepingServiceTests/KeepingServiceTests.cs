using Application.DTO.Animal;
using Application.DTO.Keeping;
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
    public class KeepingServiceTests
    {
        private IKeepingService _service;
        private IMapper _mapper;
        private Mock<IRepository<Keeping>> _keepingRepositoryMock;
        private Mock<IRepository<AnimalKeeping>> _animalKeepingRepositoryMock;

        [SetUp]
        public void SetUp()
        {
            _mapper = Mapper.GetMapper;
            _keepingRepositoryMock = new Mock<IRepository<Keeping>>();
            _animalKeepingRepositoryMock = new Mock<IRepository<AnimalKeeping>>();
            _service = new KeepingService(_mapper, _keepingRepositoryMock.Object, _animalKeepingRepositoryMock.Object);
        }

        [Test]
        public async Task GetAll_ReturnValueEqualsExpected_Success()
        {
            var expected = GetTestData();
            var value = expected.Select(x => _mapper.Map<Keeping>(x));
            _keepingRepositoryMock.Setup(x => x.GetAllAsync()).ReturnsAsync(value);

            var actual = await _service.GetAll();

            var expectedSer = JsonConvert.SerializeObject(expected);
            var actualSer = JsonConvert.SerializeObject(actual);
            Assert.AreEqual(expectedSer, actualSer);
        }

        [Test]
        public async Task CreateAnimalWithKeepings_Success()
        {
            var animal = new AnimalForCreationDto()
            {
                Keepings = new HashSet<KeepingDto>()
                {
                    new KeepingDto()
                    {
                        Id = 1
                    }
                }
            };
            var animalKeeping = new HashSet<AnimalKeeping>()
            {
                new AnimalKeeping()
                {
                    Animal = new Animal()
                    {
                        Id = 1
                    },
                    AnimalId = 1,
                    KeepingId = 1,
                    Keeping = new Keeping()
                    {
                        Id = 1
                    }
                }
            };
            var model = new Animal() { Id = 1 };
            _animalKeepingRepositoryMock.Setup(x => x.TryCreateManyToMany(animalKeeping));
            _animalKeepingRepositoryMock.Setup(x => x.SaveAsync());

            await _service.CreateAnimalWithKeepings(animal, model);

            _animalKeepingRepositoryMock.Verify(x => x.TryCreateManyToMany(It.IsAny<IEnumerable<AnimalKeeping>>()),
                Times.Once());
            _animalKeepingRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        [Test]
        public async Task UpdateAnimalWithKeepings_Success()
        {
            var animal = new AnimalDto()
            {
                Id = 1
            };
            var animalKeeping = new HashSet<AnimalKeeping>()
            {
                new AnimalKeeping()
                {
                    Animal = new Animal()
                    {
                        Id = 1
                    },
                    AnimalId = 1,
                    KeepingId = 1,
                    Keeping = new Keeping()
                    {
                        Id = 1
                    }
                }
            };
            var model = new Animal() { Id = 1 };
            var func = new System.Func<AnimalKeeping, long>(x => x.KeepingId);
            _animalKeepingRepositoryMock.Setup(x => x.TryUpdateManyToMany(animalKeeping,
                animalKeeping, func));
            _animalKeepingRepositoryMock.Setup(x => x.SaveAsync());

            await _service.UpdateAnimalWithKeepings(animal, model);

            _animalKeepingRepositoryMock.Verify(x => x.TryUpdateManyToMany(It.IsAny<IEnumerable<AnimalKeeping>>(),
                It.IsAny<IEnumerable<AnimalKeeping>>(),
                It.IsAny<System.Func<AnimalKeeping, long>>()),
                Times.Once());
            _animalKeepingRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        private IEnumerable<KeepingDto> GetTestData()
        {
            var expected = new List<KeepingDto>
            {
                new KeepingDto()
                {
                    Id = 1,
                    Name = "test1"
                },
                new KeepingDto()
                {
                    Id = 2,
                    Name = "test2"
                }
            };
            return expected;
        }
    }
}
