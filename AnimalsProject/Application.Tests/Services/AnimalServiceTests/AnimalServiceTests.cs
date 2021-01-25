using Application.Mapper;
using AutoMapper;
using Domain.Enums;
using Domain.Models;
using NUnit.Framework;
using System;
using System.Collections.Generic;

namespace Application.Tests.Services.MainAdminServiceTests
{
    public partial class AnimalServiceTests
    {
        [SetUp]
        public void SetUpFixture()
        {
            var mappingConfig = new MapperConfiguration(mc =>
            {
                mc.AddProfile(new AnimalMapper());
            });

            var mapper = mappingConfig.CreateMapper();
        }

        [Test]
        public void GetAllAnimals_ValidCall()
        {
           // var sr = new AnimalMapper();
            //var mock = new Mock<IRepository<Animal>>();
            //mock.Setup(repo => repo.GetAllAsync()).Returns(GetTestAnimals());
            //var service = new AnimalService();

            //var result = service.GetAllAnimals().Result.Count();
            //var expected = GetTestAnimals().Result.Count();

            //Assert.Equals(result, expected);
        }

        private IEnumerable<Animal> GetTestAnimals()
        {
            var animals = new List<Animal>
            {
                new Animal
                    {
                        Id = 3,
                        CategoryId = 1,
                        AddressId = 1,
                        FoodId = 1,
                        ChipNumber = 12245678,
                        ContinuatitonOfTreatment = true,
                        Weight = 15.5,
                        WithersHeight = 15,
                        DateOfBirth = DateTime.Parse("07/10/2018"),
                        Gender = (int)Gender.Male,
                        Sterialization = (int)Sterialization.Yes,
                        NeckCircumference = 10.2,
                    },
                    new Animal
                    {
                        Id = 4,
                        CategoryId = 3,
                        AddressId = 4,
                        FoodId = 3,
                        ChipNumber = 12445678,
                        ContinuatitonOfTreatment = false,
                        Weight = 5.5,
                        WithersHeight = 5,
                        DateOfBirth = DateTime.Parse("08/08/2014"),
                        Gender = (int)Gender.Male,
                        Sterialization = Sterialization.NotByAge,
                        NeckCircumference = 10.2,
                    }
            };
            return animals;
        }
    }
}
