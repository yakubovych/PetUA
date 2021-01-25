using Application.DTO.Animal;
using Application.DTO.Defect;
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
    public class DefectServiceTests
    {
        private IDefectService _service;
        private IMapper _mapper;
        private Mock<IRepository<Defect>> _defectRepositoryMock;
        private Mock<IRepository<AnimalDefects>> _animalDefectRepositoryMock;
        private Mock<IRepository<Animal>> _animalRepositoryMock;

        [SetUp]
        public void SetUp()
        {
            _mapper = Mapper.GetMapper;
            _defectRepositoryMock = new Mock<IRepository<Defect>>();
            _animalRepositoryMock = new Mock<IRepository<Animal>>();
            _animalDefectRepositoryMock = new Mock<IRepository<AnimalDefects>>();
            _service = new DefectService(_defectRepositoryMock.Object,
                _animalDefectRepositoryMock.Object, _animalRepositoryMock.Object);
        }

        [Test]
        public async Task CreateDefect_ResultValueEqualExpected_Success()
        {
            var defect = new Defect() { Type = "test" };
            var defectDto = _mapper.Map<DefectForCreationDto>(defect);
            _defectRepositoryMock.Setup(config => config.AddAsync(defect));
            _defectRepositoryMock.Setup(config => config.SaveAsync());

            var actual = await _service.CreateDefect(defectDto);

            Assert.AreEqual(defectDto, actual);
            _defectRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
            _defectRepositoryMock.Verify(x => x.AddAsync(It.IsAny<Defect>()), Times.Once());
        }

        [Test]
        public async Task GetDefectById_ResultValueEqualExpected_Success()
        {
            var defect = new Defect() { Id = 1, Type = "test" };
            var defectDto = _mapper.Map<DefectDto>(defect);
            var id = defect.Id;
            _defectRepositoryMock.Setup(x => x.GetByIdAsync(id)).ReturnsAsync(defect);

            var actual = await _service.GetDefectById(id);

            Assert.AreEqual(defectDto, actual);
        }

        [Test]
        public async Task DeleteDefect_Success()
        {
            var defect = new Defect() { Id = 1, Type = "test" };
            var defectDto = _mapper.Map<DefectDto>(defect);
            var id = defect.Id;
            _defectRepositoryMock.Setup(x => x.GetByIdAsync(id)).ReturnsAsync(defect);
            _defectRepositoryMock.Setup(x => x.Remove(defect));
            _defectRepositoryMock.Setup(x => x.SaveAsync());

            await _service.DeleteDefect(id);

            _defectRepositoryMock.Verify(x => x.Remove(It.IsAny<Defect>()), Times.Once());
            _defectRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        [Test]
        public async Task GetAllDefects_ResultValueEqualExpected_Success()
        {
            var expected = GetTestDefects();
            var value = expected.Select(x => _mapper.Map<Defect>(x));
            _defectRepositoryMock.Setup(x => x.GetAllAsync()).ReturnsAsync(value);

            var actual = await _service.GetAllDefects();

            var expectedSer = JsonConvert.SerializeObject(expected);
            var actualSer = JsonConvert.SerializeObject(actual);
            Assert.AreEqual(expectedSer, actualSer);
        }

        [Test]
        public async Task UpdateDefect_Success()
        {
            var defect = new Defect() { Id = 1, Type = "test" };
            var defectDto = _mapper.Map<DefectDto>(defect);
            var id = defect.Id;
            _defectRepositoryMock.Setup(x => x.GetByIdAsync(id)).ReturnsAsync(defect);
            _defectRepositoryMock.Setup(x => x.Update(defect));
            _defectRepositoryMock.Setup(x => x.SaveAsync());

            await _service.UpdateDefect(defectDto);

            _defectRepositoryMock.Verify(x => x.Update(It.IsAny<Defect>()), Times.Once());
            _defectRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        [Test]
        public async Task CreateAnimalWithDefeects_Success()
        {
            var animal = new AnimalForCreationDto()
            {
                Defects = new HashSet<DefectDto>()
                {
                    new DefectDto()
                    {
                        Id = 1,
                        Type = "testType"
                    }
                }
            };
            var animalDefects = new HashSet<AnimalDefects>()
            {
                new AnimalDefects()
                {
                    AnimalId = 1,
                    Animal = new Animal()
                    {
                        Id = 1
                    },
                    DefectsId = 1,
                    Defect = new Defect()
                    {
                        Id = 1,
                        Type = "testType"
                    }
                }
            };
            var model = new Animal() { Id = 1 };
            _animalDefectRepositoryMock.Setup(x => x.TryCreateManyToMany(animalDefects));
            _animalDefectRepositoryMock.Setup(x => x.SaveAsync());

            await _service.CreateAnimalWithDefects(animal, model);

            _animalDefectRepositoryMock.Verify(x => x.TryCreateManyToMany(It.IsAny<IEnumerable<AnimalDefects>>()), 
                Times.Once());
            _animalDefectRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        [Test]
        public async Task UpdateAnimalWithDefects_Success()
        {
            var animal = new AnimalDto()
            {
                Id = 1
            };
            var animalDefects = new HashSet<AnimalDefects>()
            {
                new AnimalDefects()
                {
                    AnimalId = 1,
                    Animal = new Animal()
                    {
                        Id = 1
                    },
                    DefectsId = 1,
                    Defect = new Defect()
                    {
                        Id = 1
                    }
                }
            };
            var model = new Animal() { Id = 1 };
            var func = new System.Func<AnimalDefects, long>(x => x.DefectsId);
            _animalDefectRepositoryMock.Setup(x => x.TryUpdateManyToMany(animalDefects, animalDefects, func));
            _animalDefectRepositoryMock.Setup(x => x.SaveAsync());

            await _service.UpdateAnimalWithDefects(animal, model);

            _animalDefectRepositoryMock.Verify(x => x.TryUpdateManyToMany(It.IsAny<IEnumerable<AnimalDefects>>(), 
                It.IsAny<IEnumerable<AnimalDefects>>(), 
                It.IsAny<System.Func<AnimalDefects, long>>()), 
                Times.Once());
            _animalDefectRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        private IEnumerable<DefectDto> GetTestDefects()
        {
            var expected = new List<DefectDto>
            {
                new DefectDto()
                {
                    Id = 1,
                    Type = "test1"
                },
                new DefectDto()
                {
                    Id = 2,
                    Type = "test2"
                }
            };
            return expected;
        }
    }
}
