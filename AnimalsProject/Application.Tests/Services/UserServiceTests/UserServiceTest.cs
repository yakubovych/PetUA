using Moq;
using Application.Tests.Fakes;
using AutoMapper;
using Domain.Models;
using Application.Interfaces;
using Microsoft.Extensions.Configuration;
using Persistance.Interfaces;
using NUnit.Framework;
using Application.Services;
using Application.Common.Interfaces;

namespace Application.Tests.Services.UserServiceTests
{
    [TestFixture]
    public partial class UserServiceTest
    {
        private Mock<FakeUserManager> _userManager;
        private Mock<FakeSignInManager> _signInManager;
        private Mock<IEmailHelper> _emailHelper;
        private Mock<ITokenService> _tokenService;
        private IMapper _mapper;
        private Mock<IConfiguration> _configuration;
        private Mock<IRepository<User>> _repository;
        private UserService _userService;

        [SetUp]
        public void Init()
        {
            _userManager = new Mock<FakeUserManager>();
            _signInManager = new Mock<FakeSignInManager>() ;
            _emailHelper = new Mock<IEmailHelper>();
            _tokenService = new Mock<ITokenService>();
            _mapper = Mapper.GetMapper;
            _configuration = new Mock<IConfiguration>();
            _repository = new Mock<IRepository<User>>();
        }
    }
}
