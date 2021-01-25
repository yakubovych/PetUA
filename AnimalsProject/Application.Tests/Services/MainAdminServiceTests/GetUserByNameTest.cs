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
        [TestCase("Admin")]
        [TestCase("admin")]
        [TestCase("ADMIN")]
        [TestCase("ADmin")]
        [TestCase("uSER")]
        [TestCase("User")]
        [TestCase("USER")]
        [TestCase("useR")]
        public void GetUsersByName_ReturnsUsers_WhoseNameMatchedSpecifiedNameInAnyFormat(string name)
        {
            var fakeUserManager = new Mock<FakeUserManager>();

            fakeUserManager.Setup(manager => manager.Users).Returns(UserDataSeed.Users.AsQueryable());

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            var expectedCount = UserDataSeed.Users.Where(user => user.FullName.ToLower().Contains(name.ToLower())).ToList().Count;
            var actualCount = service.GetUsersByName(name).ToList().Count;

            Assert.IsTrue(expectedCount == actualCount);
        }

        [Test]
        [TestCase(null)]
        [TestCase("")]
        public void GetUserByName_ThrowsArgumentNullException_WhenArgumentIsNullOrEmpty(string name)
        {
            var fakeUserManager = new Mock<FakeUserManager>();

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            Assert.Throws<ArgumentNullException>(() => service.GetUsersByName(name));
        }

        [Test]
        [TestCase("Name that does not exist")]
        [TestCase("12345923")]
        [TestCase("SUPER_ADMIN")]
        [TestCase("adMINS")]
        [TestCase("USERRR")]
        public void GetUsersByName_ReturnsEmptyList_WhenAnyUsersWithSpecifiedNameFound(string name)
        {
            var fakeUserManager = new Mock<FakeUserManager>();

            fakeUserManager.Setup(manager => manager.Users).Returns(UserDataSeed.Users.AsQueryable());

            var service = new MainAdminService(fakeUserManager.Object, Mapper.GetMapper);

            var userWithSpecifiedName = service.GetUsersByName(name).ToList().Count;

            Assert.IsTrue(userWithSpecifiedName == 0);
        }
    }
}
