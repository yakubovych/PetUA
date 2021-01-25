using Application.Interfaces;
using Application.Services;
using Application.Tests.TestData;
using Domain.Models;
using Domain.Enums;
using Moq;
using NUnit.Framework;
using Persistance.Interfaces;
using System.Linq;
using System.Threading.Tasks;
using System;

namespace Application.Tests.Services.AnimalServiceTests
{
    [TestFixture]
    public partial class AnimalServiceTests
    {
        [Test]
        public async Task CheckAnimalsBookingTime_ReturnsListOfBookedAnimals()
        {
            var animalRepoMock = new Mock<IRepository<Animal>>();
            animalRepoMock.Setup(repo => repo.GetAllQueryable()).Returns(AnimalsTestData.Animals.AsQueryable);

            var animalService = GetAnimalServiceMockObject(animalRepoMock);

            var expectedAnimalList = AnimalsTestData.Animals.Where(animal => animal.Status == AnimalStatus.Booked).ToList();
            var actualAnimalList = (await animalService.GetAnimalsBookingTime()).ToList();

            Assert.IsTrue(expectedAnimalList.Count == actualAnimalList.Count);

            for (int i = 0; i < actualAnimalList.Count; i++)
            {
                Assert.IsTrue(expectedAnimalList[i].Id == actualAnimalList[i].Animal.Id);
                Assert.IsTrue(expectedAnimalList[i].Name.Equals(actualAnimalList[i].Animal.Name));
                Assert.IsTrue(expectedAnimalList[i].AddressId == actualAnimalList[i].Animal.AddressId);
                Assert.IsTrue(expectedAnimalList[i].CategoryId == actualAnimalList[i].Animal.CategoryId);
                Assert.IsTrue(expectedAnimalList[i].ChipNumber == actualAnimalList[i].Animal.ChipNumber);
                Assert.IsTrue(expectedAnimalList[i].Comment.Equals(actualAnimalList[i].Animal.Comment));
                Assert.IsTrue(expectedAnimalList[i].DateOfBirth == actualAnimalList[i].Animal.DateOfBirth);
                Assert.IsTrue(expectedAnimalList[i].FoundDate == actualAnimalList[i].Animal.FoundDate);
                Assert.IsTrue(expectedAnimalList[i].FoodId == actualAnimalList[i].Animal.FoodId);
                Assert.IsTrue((int)expectedAnimalList[i].Gender == actualAnimalList[i].Animal.Gender);
                Assert.IsTrue(expectedAnimalList[i].IsNew == actualAnimalList[i].Animal.IsNew);
                Assert.IsTrue(expectedAnimalList[i].IsHidden == actualAnimalList[i].Animal.IsHidden);
                Assert.IsTrue(expectedAnimalList[i].NeckCircumference == actualAnimalList[i].Animal.NeckCircumference);
                Assert.IsTrue((int)expectedAnimalList[i].Status == actualAnimalList[i].Animal.Status);
                Assert.IsTrue((int)expectedAnimalList[i].Sterialization == actualAnimalList[i].Animal.Sterialization);
                Assert.IsTrue(expectedAnimalList[i].ContinuatitonOfTreatment == actualAnimalList[i].Animal.ContinuatitonOfTreatment);

                var AnimalBookEndingDate = expectedAnimalList[i].BookOrders.FirstOrDefault(order => order.AnimalId == expectedAnimalList[i].Id)?.EndingDate;
                var bookMinutesRemining = AnimalBookEndingDate?.Subtract(DateTime.Now).TotalMinutes ?? double.MaxValue;

                Assert.IsTrue(Math.Round(bookMinutesRemining) == Math.Round(actualAnimalList[i].MinutesRemaining));
            }
        }

        [Test]
        public async Task CheckAnimalsBookingTime_ReturnsEmptyList_WhenThereIsNoBookedAnimal()
        {
            var animalRepoMock = new Mock<IRepository<Animal>>();

            var notBookedAnimals = AnimalsTestData.Animals.Where(animal => animal.Status != AnimalStatus.Booked).AsQueryable();
            animalRepoMock.Setup(repo => repo.GetAllQueryable()).Returns(notBookedAnimals);

            var animalService = GetAnimalServiceMockObject(animalRepoMock);

            var expectedCount = 0;
            var actualCount = (await animalService.GetAnimalsBookingTime()).ToList().Count;

            Assert.IsTrue(expectedCount == actualCount);

        }

        private AnimalService GetAnimalServiceMockObject(Mock<IRepository<Animal>> animalRepoMock)
        {
            var keepingServiceMock = new Mock<IKeepingService>();
            var attitidesServiceMock = new Mock<IAttitudeToService>();
            var defectServiceMock = new Mock<IDefectService>();
            var processingServiceMock = new Mock<IProcessingService>();
            var needsServiceMock = new Mock<INeedsService>();
            var isNewServiceMock = new Mock<IIsNewService>();
            var vaccinationServiceMock = new Mock<IVaccinationService>();
            var uriServiceMock = new Mock<IUriService>();
            var animalLocationHistoryServiceMock = new Mock<IAnimalLocationHistoryService>();
            var statisticServiceMock = new Mock<IStatisticService<Animal>>();
            var viewLocationHistoryServiceMock = new Mock<IAnimalViewLocationService>();
            var descriptionServiceMock = new Mock<IDescriptionService>();
            var breesServiceMock = new Mock<IBreedService>();
            var filterServiceLocationMock = new Mock<IFilterService<Animal, Queries.AnimalQuery>>();

            return new AnimalService(animalRepoMock.Object, Mapper.GetMapper, keepingServiceMock.Object,
                                     attitidesServiceMock.Object, defectServiceMock.Object, processingServiceMock.Object,
                                     needsServiceMock.Object, vaccinationServiceMock.Object, isNewServiceMock.Object,
                                      uriServiceMock.Object, animalLocationHistoryServiceMock.Object,
                                     statisticServiceMock.Object, viewLocationHistoryServiceMock.Object, filterServiceLocationMock.Object,
                                     descriptionServiceMock.Object, breesServiceMock.Object);

        }
    }
}
