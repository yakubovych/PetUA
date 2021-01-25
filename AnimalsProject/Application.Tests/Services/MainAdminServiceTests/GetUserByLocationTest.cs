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
        [TestCase(2)]
        [TestCase(3)]
        public void GetUsersByLocation_ReturnsUsers_WhenThereAreAnyWithSpecifiedLocation(int locationId)
        {
            var fakeUserManager = new Mock<FakeUserManager>();

            fakeUserManager.Setup(manager => manager.Users).Returns(UserDataSeed.Users.AsQueryable());
          
            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            var expectedCount = UserDataSeed.Users.Where(user => user.AddressId == locationId).ToList().Count;
            var actualCount = service.GetUsersByLocation(locationId).ToList().Count;

            Assert.IsTrue(expectedCount == actualCount);
        }

        [Test]
        [TestCase(-1)]
        [TestCase(-123)]
        public void GetUsersByLocation_ThrowsArgumentException_WhenIdIsInvalid(int locationId)
        {
            var fakeUserManager = new Mock<FakeUserManager>();

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            Assert.Throws<ArgumentException>(() => service.GetUsersByLocation(locationId));
        }

        [Test]
        [TestCase(4)]
        [TestCase(0)]
        [TestCase(1)]
        public void GetUsersByLocation_ReturnsEmptyList_WhenAnyUserWithSpecifiedLocationIsFound(int locationId)
        {
            var fakeUserManager = new Mock<FakeUserManager>();

            fakeUserManager.Setup(manager => manager.Users).Returns(UserDataSeed.Users.AsQueryable());

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            var usersInSpecifiedLocation = service.GetUsersByLocation(locationId).ToList().Count;

            Assert.IsTrue(usersInSpecifiedLocation == 0);
        }
    }
}
