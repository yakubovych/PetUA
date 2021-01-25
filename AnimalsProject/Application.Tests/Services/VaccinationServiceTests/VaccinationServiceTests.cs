using Application.DTO.Animal;
using Application.DTO.VaccinationDtos;
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
    public class VaccinationServiceTests
    {
        private IMapper _mapper;
        private IVaccinationService _service;
        private Mock<IRepository<Vaccination>> _vaccinationRepositoryMock;
        private Mock<IRepository<AnimalVaccination>> _animalVaccinationRepositoryMock;

        [SetUp]
        public void SetUp()
        {
            _mapper = Mapper.GetMapper;
            _vaccinationRepositoryMock = new Mock<IRepository<Vaccination>>();
            _animalVaccinationRepositoryMock = new Mock<IRepository<AnimalVaccination>>();
            _service = new VaccinationService(_vaccinationRepositoryMock.Object,
                _animalVaccinationRepositoryMock.Object, _mapper);
        }

        [Test]
        public async Task Create_ResultValueEqualExpected_Success()
        {
            var vaccination = new Vaccination() { Id = 1, Name = "testName", Type = "testType" };
            var vaccinationDto = _mapper.Map<VaccinationForCreationDto>(vaccination);
            _vaccinationRepositoryMock.Setup(x => x.AddAsync(vaccination));
            _vaccinationRepositoryMock.Setup(x => x.SaveAsync());

            var actual = await _service.Create(vaccinationDto);

            Assert.AreEqual(vaccinationDto, actual);
            _vaccinationRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
            _vaccinationRepositoryMock.Verify(x => x.AddAsync(It.IsAny<Vaccination>()), Times.Once());
        }

        [Test]
        public async Task Delete_Success()
        {
            var vaccination = new Vaccination() { Id = 1, Name = "testName", Type = "testType" };
            var id = vaccination.Id;
            _vaccinationRepositoryMock.Setup(x => x.GetByIdAsync(id)).ReturnsAsync(vaccination);
            _vaccinationRepositoryMock.Setup(x => x.Remove(vaccination));
            _vaccinationRepositoryMock.Setup(x => x.SaveAsync());

            await _service.Delete(id);

            _vaccinationRepositoryMock.Verify(x => x.Remove(It.IsAny<Vaccination>()), Times.Once());
            _vaccinationRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        [Test]
        public async Task GetAll_ResultValueEqualsExpected_Success()
        {
            var expected = GetTestData();
            var value = expected.Select(x => _mapper.Map<Vaccination>(x));
            _vaccinationRepositoryMock.Setup(x => x.GetAllAsync()).ReturnsAsync(value);

            var actual = await _service.GetAll();

            var expectedSer = JsonConvert.SerializeObject(expected);
            var actualSer = JsonConvert.SerializeObject(actual);
            Assert.AreEqual(expectedSer, actualSer);
        }

        [Test]
        public async Task GetById_ResultValueEqualsExpected_Success()
        {
            var vaccination = new Vaccination() { Id = 1, Name = "testName", Type = "testType" };
            var id = vaccination.Id;
            var vaccinationDto = _mapper.Map<VaccinationDto>(vaccination);
            _vaccinationRepositoryMock.Setup(x => x.GetByIdAsync(id)).ReturnsAsync(vaccination);

            var actual = await _service.GetById(id);
            
            Assert.AreEqual(vaccinationDto, actual);
        }

        [Test]
        public async Task Update_Success()
        {
            var vaccination = new Vaccination() { Id = 1, Name = "testName", Type = "testType" };
            var id = vaccination.Id;
            var vaccinationDto = _mapper.Map<VaccinationDto>(vaccination);
            _vaccinationRepositoryMock.Setup(x => x.GetByIdAsync(id)).ReturnsAsync(vaccination);
            _vaccinationRepositoryMock.Setup(x => x.Update(vaccination));
            _vaccinationRepositoryMock.Setup(x => x.SaveAsync());

            await _service.Update(vaccinationDto);

            _vaccinationRepositoryMock.Verify(x => x.Update(It.IsAny<Vaccination>()), Times.Once());
            _vaccinationRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        [Test]
        public async Task CreateAnimalWithVaccination_Success()
        {
            var animal = new AnimalForCreationDto()
            {
                Vaccinations = new HashSet<VaccinationFullForCreationDto>()
                {
                    new VaccinationFullForCreationDto()
                    {
                        Id = 1,
                        Name = "testName",
                        Type = "testType",
                        VaccinationDate = new System.DateTime(2020,4,20)
                    }
                }
            };
            var animalVaccinations = new HashSet<AnimalVaccination>()
            {
                new AnimalVaccination()
                {
                    AnimalId = 1,
                    Animal = new Animal()
                    {
                        Id = 1
                    },
                    VaccinationId = 1,
                    Vaccination = new Vaccination()
                    {
                        Id = 1
                    }
                }
            };
            var model = new Animal() { Id = 1 };
            _animalVaccinationRepositoryMock.Setup(x => x.TryCreateManyToMany(animalVaccinations));
            _animalVaccinationRepositoryMock.Setup(x => x.SaveAsync());

            await _service.CreateAnimalWithVaccination(animal, model);

            _animalVaccinationRepositoryMock.Verify(x => x.TryCreateManyToMany(It.IsAny<IEnumerable<AnimalVaccination>>()), 
                Times.Once());
            _animalVaccinationRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        [Test]
        public async Task UpdateAnimalWithVaccination_Success()
        {
            var animal = new AnimalDto()
            {
                Id = 1
            };
            var animalVaccinations = new HashSet<AnimalVaccination>()
            {
                new AnimalVaccination()
                {
                    AnimalId = 1,
                    Animal = new Animal()
                    {
                        Id = 1
                    },
                    VaccinationId = 1,
                    Vaccination = new Vaccination()
                    {
                        Id = 1
                    }
                }
            };
            var model = new Animal() { Id = 1 };
            var func = new System.Func<AnimalVaccination, long>(x => x.VaccinationId);
            var func2 = new System.Func<AnimalVaccination, System.DateTime>(x => x.VaccinationDate);
            var func3 = new System.Func<AnimalVaccination, System.DateTime>(x => x.NextVaccinationDate);
            _animalVaccinationRepositoryMock.Setup(x => x.TryUpdateManyToMany(animalVaccinations, 
                animalVaccinations, func, func2, func3));
            _animalVaccinationRepositoryMock.Setup(x => x.SaveAsync());

            await _service.UpdateAnimalWithVaccination(animal, model);

            _animalVaccinationRepositoryMock.Verify(x => x.TryUpdateManyToMany(It.IsAny<IEnumerable<AnimalVaccination>>(), 
                It.IsAny<IEnumerable<AnimalVaccination>>(), 
                It.IsAny<System.Func<AnimalVaccination, long>>(), 
                It.IsAny<System.Func<AnimalVaccination, System.DateTime>>(), 
                It.IsAny<System.Func<AnimalVaccination, System.DateTime>>()), 
                Times.Once());
            _animalVaccinationRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        private IEnumerable<VaccinationDto> GetTestData()
        {
            var expected = new List<VaccinationDto>
            {
                new VaccinationDto()
                {
                    Id = 1,
                    Name = "testName1",
                    Type = "testType1"
                },
                new VaccinationDto()
                {
                    Id = 1,
                    Name = "testName2",
                    Type = "testType2"
                }
            };
            return expected;
        }
    }
}
