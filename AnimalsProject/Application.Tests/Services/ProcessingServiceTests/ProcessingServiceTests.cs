using Application.DTO.Animal;
using Application.DTO.Processing;
using Application.Interfaces;
using Application.Services;
using AutoMapper;
using Domain.Models;
using Microsoft.Extensions.Configuration;
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
    public class ProcessingServiceTests
    {
        private IProcessingService _service;
        private IMapper _mapper;
        private Mock<IRepository<Processing>> _processingRepositoryMock;
        private Mock<IRepository<AnimalProcessing>> _animalProcessingRepositoryMock;
        private Mock<IConfiguration> _configurationMock;

        [SetUp]
        public void SetUp()
        {
            _mapper = Mapper.GetMapper;
            _configurationMock = new Mock<IConfiguration>();
            _processingRepositoryMock = new Mock<IRepository<Processing>>();
            _animalProcessingRepositoryMock = new Mock<IRepository<AnimalProcessing>>();
            _service = new ProcessingService(_processingRepositoryMock.Object, _animalProcessingRepositoryMock.Object, _mapper,
                _configurationMock.Object);
        }

        [Test]
        public async Task GetAll_ReturnValueEqualsExpected_Success()
        {
            var expected = GetTestData();
            var value = expected.Select(x => _mapper.Map<Processing>(x));
            _processingRepositoryMock.Setup(x => x.GetAllAsync()).ReturnsAsync(value);

            var actual = await _service.GetAll();

            var expectedSer = JsonConvert.SerializeObject(expected);
            var actualSer = JsonConvert.SerializeObject(actual);
            Assert.AreEqual(expectedSer, actualSer);
        }

        [Test]
        public async Task CreateAnimalWithProcessing_Success()
        {
            var animal = new AnimalForCreationDto()
            {
                Processings = new HashSet<ProcessingDto>()
                {
                    new ProcessingDto()
                    {
                        Id = 1
                    }
                }
            };
            var animalProcessing = new HashSet<AnimalProcessing>()
            {
                new AnimalProcessing()
                {
                    Animal = new Animal()
                    {
                        Id = 1
                    },
                    AnimalId = 1,
                    ProcessingId = 1,
                    Processing = new Processing()
                    {
                        Id = 1
                    }
                }
            };
            var model = new Animal() { Id = 1 };
            _animalProcessingRepositoryMock.Setup(x => x.TryCreateManyToMany(animalProcessing));
            _animalProcessingRepositoryMock.Setup(x => x.SaveAsync());

            await _service.CreateAnimalWithProcessing(animal, model);

            _animalProcessingRepositoryMock.Verify(x => x.TryCreateManyToMany(It.IsAny<IEnumerable<AnimalProcessing>>()),
                Times.Once());
            _animalProcessingRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        [Test]
        public async Task UpdateAnimalWithProcessings_Success()
        {
            var animal = new AnimalDto()
            {
                Id = 1
            };
            var animalProcessing = new HashSet<AnimalProcessing>()
            {
                new AnimalProcessing()
                {
                    Animal = new Animal()
                    {
                        Id = 1
                    },
                    AnimalId = 1,
                    ProcessingId = 1,
                    Processing = new Processing()
                    {
                        Id = 1
                    }
                }
            };
            var model = new Animal() { Id = 1 };
            var func = new System.Func<AnimalProcessing, long>(x => x.ProcessingId);
            var func2 = new System.Func<AnimalProcessing, System.DateTime>(x => x.ProcessingDate);
            var func3 = new System.Func<AnimalProcessing, System.DateTime>(x => x.NextProcessingDate);
            _animalProcessingRepositoryMock.Setup(x => x.TryUpdateManyToMany(animalProcessing,
                animalProcessing, func, func2, func3));
            _animalProcessingRepositoryMock.Setup(x => x.SaveAsync());

            await _service.UpdateAnimalWithProcessing(animal, model);

            _animalProcessingRepositoryMock.Verify(x => x.TryUpdateManyToMany(It.IsAny<IEnumerable<AnimalProcessing>>(),
                It.IsAny<IEnumerable<AnimalProcessing>>(),
                It.IsAny<System.Func<AnimalProcessing, long>>(),
                It.IsAny<System.Func<AnimalProcessing, System.DateTime>>(),
                It.IsAny<System.Func<AnimalProcessing, System.DateTime>>()),
                Times.Once());
            _animalProcessingRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        private IEnumerable<ProcessingDto> GetTestData()
        {
            var expected = new List<ProcessingDto>
            {
                new ProcessingDto()
                {
                    Id = 1,
                    Type = "test1"
                },
                new ProcessingDto()
                {
                    Id = 2,
                    Type = "test2"
                }
            };
            return expected;
        }
    }
}
