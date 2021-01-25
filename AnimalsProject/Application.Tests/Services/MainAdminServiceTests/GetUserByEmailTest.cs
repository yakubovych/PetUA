using Application.Exceptions;
using Application.Services;
using Application.Tests.TestData;
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
        [TestCase(0)]
        [TestCase(1)]
        [TestCase(2)]
        public void GetUserByEmail_ReturnsUser_WhenEmailIsValid(int validUser)
        {
            var fakeUserManager = new Mock<FakeUserManager>();

            fakeUserManager.Setup(manager => manager.Users).Returns(UserDataSeed.Users.AsQueryable());

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            var expectedUser = UserDataSeed.Users[validUser];
            var actualUser = service.GetUserByEmail(expectedUser.Email);
            
            Assert.AreEqual(expectedUser.Email, actualUser.Email);
            Assert.AreEqual(expectedUser.Id, actualUser.Id);
            Assert.AreEqual(expectedUser.FullName, actualUser.FullName);
            Assert.AreEqual(expectedUser.PhoneNumber, actualUser.PhoneNumber);
            Assert.IsTrue(expectedUser.Address.Id == actualUser.Address.Id);
            Assert.IsTrue(expectedUser.Address.Name == actualUser.Address.Name);
            Assert.IsTrue(expectedUser.UserHelps.ToList().Count == actualUser.Helps.ToList().Count);
            Assert.IsTrue(expectedUser.AdoptOrders.ToList().Count == actualUser.AdoptOrders.ToList().Count);
            Assert.IsTrue(expectedUser.BookOrders.ToList().Count == actualUser.BookOrders.ToList().Count);
            Assert.IsTrue(expectedUser.Articles.ToList().Count == actualUser.Articles.ToList().Count);
        }

        [Test]
        [TestCase(null)]
        [TestCase("")]
        public void GetUserByEmail_ThrowsArgumentNullException_WhenEmailArgumentIsNullOrEmpty(string email)
        {
            var fakeUserManager = new Mock<FakeUserManager>();

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            Assert.Throws<ArgumentNullException>(() => service.GetUserByEmail(email));
        }

        [Test]
        [TestCase(" ")]
        [TestCase("123908")]
        [TestCase("some@gmail.ua")]
        [TestCase("serice@gmail.com")]
        [TestCase("somegmail.com")]
        [TestCase("email_that_does_not_exist")]
        public void GetUserByEmail_ThrowsObjectNotFoundException_WhenEmailIsInvalid(string email)
        {
            var fakeUserManager = new Mock<FakeUserManager>();

            fakeUserManager.Setup(manager => manager.Users).Returns(UserDataSeed.Users.AsQueryable());

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            Assert.Throws<ObjectNotFoundException>(() => service.GetUserByEmail(email));
        }
    }
}
