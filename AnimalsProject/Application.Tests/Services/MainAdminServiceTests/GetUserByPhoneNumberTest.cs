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
        public void GetUserByPhoneNumber_ReturnsUser_WhenItExists(int userWithPhoneNumber)
        {
            var fakeUserManager = new Mock<FakeUserManager>();

            fakeUserManager.Setup(manager => manager.Users).Returns(UserDataSeed.Users.AsQueryable());

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            var expectedUser = UserDataSeed.Users[userWithPhoneNumber];
            var actualUser = service.GetUserByPhoneNumber(expectedUser.PhoneNumber);

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
        [TestCase("")]
        [TestCase(null)]
        public void GetUserByPhoneNumber_ThrowsArgumentNullException_WhenItIsNullOrEmpty(string phoneNumber)
        {
            var fakeUserManager = new Mock<FakeUserManager>();

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            Assert.Throws<ArgumentNullException>(() => service.GetUserByPhoneNumber(phoneNumber));
        }

        [Test]
        [TestCase("09741283332")]
        [TestCase("0974128344")]
        [TestCase("09741283411")]
        [TestCase("000000000")]
        [TestCase(" ")]
        public void GetUserByPhoneNumber_ThrowsObjectNotFoundException_WhenThereIsNoUserWithSpecifiedNumber(string phoneNumber)
        {
            var fakeUserManager = new Mock<FakeUserManager>();

            fakeUserManager.Setup(manager => manager.Users).Returns(UserDataSeed.Users.AsQueryable());

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            Assert.Throws<ObjectNotFoundException>(() => service.GetUserByPhoneNumber(phoneNumber));
        }
    }
}
