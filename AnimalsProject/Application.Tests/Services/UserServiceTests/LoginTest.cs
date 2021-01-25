using Application.DTO.User;
using Application.Exceptions;
using Application.Services;
using Application.Tests.TestData;
using Domain.Models;
using Microsoft.AspNetCore.Identity;
using Moq;
using NUnit.Framework;
using System.Threading.Tasks;

namespace Application.Tests.Services.UserServiceTests
{
    public partial class UserServiceTest
    {
        [Test]
        public async Task Login_ReturnsAccessAndRefreshTokens()
        {
            var loginModel = new UserLoginDto
            {
                Email = "service@gmail.com",
                Password = "Passwo99",
                RememberMe = true
            };
            var token = "123token123";

            _signInManager.Setup(meth => meth.PasswordSignInAsync(It.IsAny<string>(), It.IsAny<string>(), It.IsAny<bool>(), It.IsAny<bool>()))
                .ReturnsAsync(SignInResult.Success);
            _tokenService.Setup(meth => meth.GenerateAccessToken(It.IsAny<User>())).ReturnsAsync(token);
            _tokenService.Setup(meth => meth.GenerateRefreshToken()).Returns(token);
            _userManager.Setup(meth => meth.FindByEmailAsync(It.IsAny<string>())).ReturnsAsync(UserDataSeed.Users[1]);

            _userService = new UserService(_userManager.Object, _signInManager.Object, _emailHelper.Object,
                _repository.Object, _tokenService.Object, _mapper, _configuration.Object);

            var tokenModel = await _userService.LoginAsync(loginModel);

            Assert.IsTrue(tokenModel.AccessToken.Equals(token) && tokenModel.RefreshToken.Equals(token));
        }

        [Test]
        public void Login_ThrowsLoginException_WhenUserIsNotSignedIn()
        {
            _signInManager.Setup(meth => meth.PasswordSignInAsync(It.IsAny<string>(), It.IsAny<string>(), It.IsAny<bool>(), It.IsAny<bool>()))
                .ReturnsAsync(SignInResult.Failed);

            var loginModel = new UserLoginDto
            {
                Email = "service@gmail.com",
                Password = "Passwo99",
                RememberMe = true
            };

            _userService = new UserService(_userManager.Object, _signInManager.Object, _emailHelper.Object,
                _repository.Object, _tokenService.Object, _mapper, _configuration.Object);

            Assert.ThrowsAsync<LoginException>(async () => await _userService.LoginAsync(loginModel));

        }
    }
}
