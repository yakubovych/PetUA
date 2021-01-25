using Application.DTO.Animal;
using Application.DTO.Needs;
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
    public class NeedsServiceTests
    {
        private INeedsService _service;
        private IMapper _mapper;
        private Mock<IRepository<Needs>> _needsRepositoryMock;
        private Mock<IRepository<AnimalNeeds>> _animalNeedsRepositoryMock;

        [SetUp]
        public void SetUp()
        {
            _mapper = Mapper.GetMapper;
            _needsRepositoryMock = new Mock<IRepository<Needs>>();
            _animalNeedsRepositoryMock = new Mock<IRepository<AnimalNeeds>>();
            _service = new NeedsService(_mapper, _animalNeedsRepositoryMock.Object, _needsRepositoryMock.Object);
        }

        [Test]
        public async Task GetAll_ReturnValueEqualsExpected_Success()
        {
            var expected = GetTestData();
            var value = expected.Select(x => _mapper.Map<Needs>(x));
            _needsRepositoryMock.Setup(x => x.GetAllAsync()).ReturnsAsync(value);

            var actual = await _service.GetAll();

            var expectedSer = JsonConvert.SerializeObject(expected);
            var actualSer = JsonConvert.SerializeObject(actual);
            Assert.AreEqual(expectedSer, actualSer);
        }

        [Test]
        public async Task CreateAnimalWithNeeds_Success()
        {
            var animal = new AnimalForCreationDto()
            {
                Needs = new HashSet<NeedsDto>()
                {
                    new NeedsDto()
                    {
                        Id = 1
                    }
                }
            };
            var animalNeeds = new HashSet<AnimalNeeds>()
            {
                new AnimalNeeds()
                {
                    Animal = new Animal()
                    {
                        Id = 1
                    },
                    AnimalId = 1,
                    NeedsId = 1,
                    Needs = new Needs()
                    {
                        Id = 1
                    }
                }
            };
            var model = new Animal() { Id = 1 };
            _animalNeedsRepositoryMock.Setup(x => x.TryCreateManyToMany(animalNeeds));
            _animalNeedsRepositoryMock.Setup(x => x.SaveAsync());

            await _service.CreateAnimalWithNeeds(animal, model);

            _animalNeedsRepositoryMock.Verify(x => x.TryCreateManyToMany(It.IsAny<IEnumerable<AnimalNeeds>>()),
                Times.Once());
            _animalNeedsRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        [Test]
        public async Task UpdateAnimalWithNeeds_Success()
        {
            var animal = new AnimalDto()
            {
                Id = 1
            };
            var animalNeeds = new HashSet<AnimalNeeds>()
            {
                new AnimalNeeds()
                {
                    Animal = new Animal()
                    {
                        Id = 1
                    },
                    AnimalId = 1,
                    NeedsId = 1,
                    Needs = new Needs()
                    {
                        Id = 1
                    }
                }
            };
            var model = new Animal() { Id = 1 };
            var func = new System.Func<AnimalNeeds, long>(x => x.NeedsId);
            _animalNeedsRepositoryMock.Setup(x => x.TryUpdateManyToMany(animalNeeds,
                animalNeeds, func));
            _animalNeedsRepositoryMock.Setup(x => x.SaveAsync());

            await _service.UpdateAnimalWithNeeds(animal, model);

            _animalNeedsRepositoryMock.Verify(x => x.TryUpdateManyToMany(It.IsAny<IEnumerable<AnimalNeeds>>(),
                It.IsAny<IEnumerable<AnimalNeeds>>(),
                It.IsAny<System.Func<AnimalNeeds, long>>()),
                Times.Once());
            _animalNeedsRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        private IEnumerable<NeedsDto> GetTestData()
        {
            var expected = new List<NeedsDto>
            {
                new NeedsDto()
                {
                    Id = 1,
                    Name = "test1"
                },
                new NeedsDto()
                {
                    Id = 2,
                    Name = "test2"
                }
            };
            return expected;
        }
    }
}
