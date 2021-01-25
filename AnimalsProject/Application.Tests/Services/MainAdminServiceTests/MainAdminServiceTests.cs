using Application.Exceptions;
using Application.Tests.TestData;
using Application.Services;
using Domain.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Configuration;
using Moq;
using NUnit.Framework;
using System;
using System.Linq;

namespace Application.Tests.Services.MainAdminServiceTests
{
    [TestFixture]
    public partial class MainAdminServiceTests
    {
        [Test]
        [TestCase("0")]
        [TestCase("4")]
        [TestCase("45")]
        [TestCase(" ")]
        [TestCase("invalid_Id")]
        public void DeleteUser_ThrowsObjectNotFoundException_WhenUserNotFound(string userId)
        {
            var fakeUserManager = new Mock<FakeUserManager>();
            var configMock = new Mock<IConfiguration>();

            DeleteUserMethodsSetup(fakeUserManager, configMock, null);

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            Assert.ThrowsAsync<ObjectNotFoundException>(async () => await service.DeleteUser(userId));
        }

        [Test]
        [TestCase(0)]
        [TestCase(1)]
        [TestCase(2)]
        public void DeleteUser_DoesNotThrowAnyException_WhenArgumentIsValidAndUserIsFound(int validUser)
        {
            var fakeUserManager = new Mock<FakeUserManager>();
            var configMock = new Mock<IConfiguration>();

            DeleteUserMethodsSetup(fakeUserManager, configMock, UserDataSeed.Users[validUser]);

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            Assert.DoesNotThrowAsync( async () => await service.DeleteUser((validUser + 1).ToString()));
        }
        
        [Test]
        [TestCase(null)]
        [TestCase("")]
        public void DeleteUser_ThrowsArgumentNullException_WhenUserIdArgumentIsInvalid(string userId)
        {
            var fakeUserManager = new Mock<FakeUserManager>();
            var configMock = new Mock<IConfiguration>();

            DeleteUserMethodsSetup(fakeUserManager, configMock, UserDataSeed.Users[1]);

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            Assert.ThrowsAsync<ArgumentNullException>(async () => await service.DeleteUser(userId));
        }

        [Test]
        public void GetUsers_ReturnsAllUsers()
        {
            var fakeUserManager = new Mock<FakeUserManager>();

            fakeUserManager.Setup(manager => manager.Users).Returns(UserDataSeed.Users.AsQueryable());

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            var expectedListOfUsers = UserDataSeed.Users;
            var actualListOfUsers = service.GetUsers().ToList();

            Assert.IsTrue(expectedListOfUsers.Count == actualListOfUsers.Count);

            for(int i = 0; i < actualListOfUsers.Count; i++)
            {
                Assert.AreEqual(expectedListOfUsers[i].Email, actualListOfUsers[i].Email);
                Assert.AreEqual(expectedListOfUsers[i].Id, actualListOfUsers[i].Id);
                Assert.AreEqual(expectedListOfUsers[i].FullName, actualListOfUsers[i].FullName);
                Assert.AreEqual(expectedListOfUsers[i].PhoneNumber, actualListOfUsers[i].PhoneNumber);
                Assert.IsTrue(expectedListOfUsers[i].Address.Id == actualListOfUsers[i].Address.Id);
                Assert.IsTrue(expectedListOfUsers[i].Address.Name == actualListOfUsers[i].Address.Name);
                Assert.IsTrue(expectedListOfUsers[i].UserHelps.ToList().Count == actualListOfUsers[i].Helps.ToList().Count);
                Assert.IsTrue(expectedListOfUsers[i].AdoptOrders.ToList().Count == actualListOfUsers[i].AdoptOrders.ToList().Count);
                Assert.IsTrue(expectedListOfUsers[i].BookOrders.ToList().Count == actualListOfUsers[i].BookOrders.ToList().Count);
                Assert.IsTrue(expectedListOfUsers[i].Articles.ToList().Count == actualListOfUsers[i].Articles.ToList().Count);
            }
        }

        private void DeleteUserMethodsSetup(Mock<FakeUserManager> fakeUserManager, Mock<IConfiguration> configMock, User testUser)
        {
            fakeUserManager.Setup(manager => manager.FindByIdAsync(It.IsAny<string>())).ReturnsAsync(testUser);
            fakeUserManager.Setup(manager => manager.DeleteAsync(It.IsAny<User>())).ReturnsAsync(IdentityResult.Success);

            configMock.Setup(config => config["MAINSUPERADMIN"]).Returns("pets.adoption.service@gmail.com");
        }
    }
}
