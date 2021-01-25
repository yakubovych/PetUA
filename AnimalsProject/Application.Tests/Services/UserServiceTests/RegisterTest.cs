using Application.DTO.User;
using Application.Exceptions;
using Application.Services;
using Domain.Models;
using Microsoft.EntityFrameworkCore.Storage;
using Moq;
using NUnit.Framework;
using System.Threading;

namespace Application.Tests.Services.UserServiceTests
{
    public partial class UserServiceTest
    {
        [Test]
        public void Register_DoesNotThrowAnyException_WhenAllDataIsValid()
        {
            var registrationModel = new UserRegistrationDto
            {
                Email = "some@email",
                FullName = "Name",
                PhoneNumber = "phone",
                AddressId = 1,
                Password = "Passwo99",
                ConfirmPassword = "Passwo99"
            };
            var mappedUser = _mapper.Map<User>(registrationModel);

            var transaction = new Mock<IDbContextTransaction>();
            transaction.Setup(meth => meth.CommitAsync(It.IsAny<CancellationToken>()));
            _repository.Setup(meth => meth.BeginTransactionAsync()).ReturnsAsync(transaction.Object);
            _userManager.Setup(meth => meth.GenerateEmailConfirmationTokenAsync(It.IsAny<User>())).ReturnsAsync("123token123");
            _userManager.Setup(meth => meth.FindByEmailAsync(It.IsAny<string>())).ReturnsAsync(mappedUser);
            _configuration.Setup(meth => meth["AccountSettings:ConfirmationLink"]).Returns("{0}Account/confirm?userId={1}&token={2}&returnUrl={3}");
            _configuration.Setup(meth => meth["Server"]).Returns("https://localhost:44344/api/");

            _userService = new UserService(_userManager.Object, _signInManager.Object, _emailHelper.Object,
                _repository.Object, _tokenService.Object, _mapper, _configuration.Object);

            Assert.DoesNotThrowAsync(async () => await _userService.RegisterAsync(registrationModel, "return"));
        }

        [Test]
        public void Register_ThrowsObjectCreateException_WhenUserIsNotCreated()
        {
            var registrationModel = new UserRegistrationDto
            {
                Email = "some@email",
                FullName = "Name",
                PhoneNumber = "phone",
                AddressId = 1,
                Password = "Passwo99",
                ConfirmPassword = "Passwo99"
            };

            var transaction = new Mock<IDbContextTransaction>();
            _repository.Setup(meth => meth.BeginTransactionAsync()).ReturnsAsync(transaction.Object);
            _userManager.Setup(meth => meth.GenerateEmailConfirmationTokenAsync(It.IsAny<User>())).ReturnsAsync("123token123");
            _userManager.Setup(meth => meth.FindByEmailAsync(It.IsAny<string>())).ReturnsAsync(It.IsAny<User>);

            _userService = new UserService(_userManager.Object, _signInManager.Object, _emailHelper.Object,
                _repository.Object, _tokenService.Object, _mapper, _configuration.Object);

            Assert.ThrowsAsync<RegisterException>(async () => await _userService.RegisterAsync(registrationModel, "return"));

        }
    }
}
