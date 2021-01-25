using Application.DTO.User;
using Application.DTO.ResetPassword;
using Application.Exceptions;
using Persistance.Extension;
using Application.Interfaces;
using AutoMapper;
using Domain.Models;
using Microsoft.AspNetCore.Identity;
using System;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using System.Collections.Generic;
using Application.Common.Constants;
using Persistance.Interfaces;
using Application.Common.Interfaces;

namespace Application.Services
{
    public class UserService : IUserService
    {
        private readonly UserManager<User> _userManager;
        private readonly SignInManager<User> _signInManager;
        private readonly IEmailHelper _emailHelper;
        private readonly ITokenService _tokenService;
        private readonly IMapper _mapper;
        private readonly IConfiguration _configuration;
        private readonly IRepository<User> _repository;

        public UserService(UserManager<User> userManager,
                           SignInManager<User> signInManager,
                           IEmailHelper emailHelper,
                           IRepository<User> repository,
                           ITokenService tokenService,
                           IMapper mapper, 
                           IConfiguration configuration)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _tokenService = tokenService;
            _mapper = mapper;
            _configuration = configuration;
            _repository = repository;
            _emailHelper = emailHelper;
        }

        public async Task RegisterAsync(UserRegistrationDto model, string returnUrl)
        {
            var mappedUser = _mapper.Map<User>(model);

            mappedUser.NormalizedUserName = mappedUser.Email.ToUpper();
            mappedUser.UserName = mappedUser.Email;
            mappedUser.NormalizedUserName = mappedUser.NormalizedEmail;

            using (var transaction = await _repository.BeginTransactionAsync())
            {
                await _userManager.CreateAsync(mappedUser, model.Password);

                var user = await _userManager.FindByEmailAsync(mappedUser.Email.ToUpper());

                if (user != null)
                {
                    var confirmEmailToken = await _userManager.GenerateEmailConfirmationTokenAsync(user);

                    var encodedToken = confirmEmailToken.Base64UrlEncodeString();

                    var link = string.Format(_configuration["AccountSettings:ConfirmationLink"], _configuration["Server"], user.Id, encodedToken, returnUrl);

                    await _emailHelper.GetDataAndSendAsync(user.Email, "ConfirmEmailTemplate", "ConfirmEmailSubject", link);

                    await transaction.CommitAsync();
                }
                else
                {
                    await transaction.RollbackAsync();
                    throw new RegisterException(ExceptionStrings.CreateUserException);
                }
            }
        }

        public async Task<UserTokenDto> LoginAsync(UserLoginDto model)
        {
            var signInResult = await _signInManager.PasswordSignInAsync(model.Email, model.Password, model.RememberMe, false);
            
            if (signInResult.Succeeded)
            {
                var user = await _userManager.FindByEmailAsync(model.Email.ToUpper());

                user.RefreshToken = _tokenService.GenerateRefreshToken();
                user.LastActive = DateTime.UtcNow;

                await _userManager.UpdateAsync(user);

                var accessToken = await _tokenService.GenerateAccessToken(user);
                    return new UserTokenDto() { AccessToken = accessToken, RefreshToken = user.RefreshToken };
            }
            throw new LoginException(ExceptionStrings.LoginException);
        }

        public async Task ConfirmEmailAsync(string userId, string token)
        {
            var user = await _userManager.FindByIdAsync(userId);

            if (user == null)
                throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, userId);

            var userRoles = await _userManager.GetRolesAsync(user);
            if (userRoles.Count == 0)
            {
                await AddUserToDefaultRole(user);
            }

            var decodedToken = token.Base64UrlDecodeString();

            var confirmEmailResult = await _userManager.ConfirmEmailAsync(user, decodedToken);

            if (!confirmEmailResult.Succeeded)
                throw new ObjectUpdateException(ExceptionStrings.EmailConfirmException + string.Join(" ", confirmEmailResult.Errors.ToListOfStrings()), user.Email);
        }

        public async Task ForgotPasswordAsync(ResetPasswordDto model, string returnUrl)
        {
            var user = await _userManager.FindByEmailAsync(model.Email);
            if (user == null || !user.EmailConfirmed)
                throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, model.Email);
            
            var token = await _userManager.GeneratePasswordResetTokenAsync(user);

            var encodedEmailToken = token.Base64UrlEncodeString();

            var link = $"{returnUrl}/{user.Id}/{encodedEmailToken}";

            await _emailHelper.GetDataAndSendAsync(user.Email, "ResetPasswordTemplate", "ResetPasswordSubject", link);
        }

        public async Task ResetPasswordAsync(ResetPasswordConfirmDto model)
        {
            var user = await _userManager.FindByIdAsync(model.UserId);

            if (user == null)
                throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, model.UserId);

            var decodedToken = model.Token.Base64UrlDecodeString();

            var resetPassResult = await _userManager.ResetPasswordAsync(user, decodedToken, model.Password);

            if (!resetPassResult.Succeeded)
                throw new ObjectUpdateException(ExceptionStrings.ResetPasswordException + string.Join(" ", resetPassResult.Errors.ToListOfStrings()), user.Email);
        }

        private async Task<IdentityResult> AddUserToDefaultRole(User user)
        {
            var usersInRoles = await _userManager.GetUsersInRoleAsync(Roles.RoleStrings[3]);

            IdentityResult addedToRole;

            if (usersInRoles == null || usersInRoles.Count < 1)
            {
                addedToRole = await _userManager.AddToRoleAsync(user, Roles.RoleStrings[3]);
            }
            else
            {
                addedToRole = await _userManager.AddToRoleAsync(user, Roles.RoleStrings[0]);
            }

            if (!addedToRole.Succeeded)
                throw new RoleException(ExceptionStrings.AddToRoleException);
            return addedToRole;
        }

        public async Task<IList<string>> GetUserRoles(string userEmail)
        {
            var user = await _userManager.FindByEmailAsync(userEmail.ToUpper());

            if (user == null)
                throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, userEmail);

            return await _userManager.GetRolesAsync(user);
        }

        public async Task UpdateProfile(UserDto model, string returnUrl)
        {
            var tempUser = await _userManager.FindByIdAsync(model.Id);
            var phoneNumber = await _userManager.GetPhoneNumberAsync(tempUser);
            if (model.PhoneNumber != phoneNumber)
            {
                var result = await _userManager.SetPhoneNumberAsync(tempUser, model.PhoneNumber);
                if (!result.Succeeded)
                {
                    var userId = await _userManager.GetUserIdAsync(tempUser);
                    throw new InvalidOperationException($"Unexpected error occurred setting phone number for user with ID '{userId}'.");
                }
            }
            var email = await _userManager.GetEmailAsync(tempUser);
            if (model.Email != email)
            {
                var result = await _userManager.SetEmailAsync(tempUser, model.Email);
                if (!result.Succeeded)
                {
                    var userId = await _userManager.GetUserIdAsync(tempUser);
                    throw new InvalidOperationException($"Unexpected error occurred setting email for user with ID '{userId}'.");
                }
                else
                {
                    await _userManager.SetUserNameAsync(tempUser, model.Email);
                    var user = await _userManager.FindByEmailAsync(model.Email.ToUpper());
                    var confirmEmailToken = await _userManager.GenerateEmailConfirmationTokenAsync(user);
                    var encodedToken = confirmEmailToken.Base64UrlEncodeString();
                    var link = string.Format(_configuration["AccountSettings:ConfirmationLink"], _configuration["Server"], user.Id, encodedToken, returnUrl);
                    await _emailHelper.GetDataAndSendAsync(user.Email, "ConfirmEmailTemplate", "ConfirmEmailSubject", link);
                }
            }
            if (model.FullName != tempUser.FullName)
            {
                tempUser.FullName = model.FullName;
            }
            if (model.AddressId != tempUser.AddressId)
            {
                tempUser.AddressId = model.AddressId;
            }
            var updateResult = await _userManager.UpdateAsync(tempUser);
            if (!updateResult.Succeeded)
            {
                throw new ObjectUpdateException(ExceptionStrings.UserUpdateException + string.Join(" ", updateResult.Errors.ToListOfStrings()), email);
            }
        }

        public async Task DeleteProfile(string userEmail)
        {
            var tempUser = await _userManager.FindByEmailAsync(userEmail);
            if (tempUser == null)
            {
                throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, userEmail);
            }
            var result = await _userManager.DeleteAsync(tempUser);
            if (!result.Succeeded)
            {
                throw new InvalidOperationException($"Unexpected error occurred deleting user with Email '{userEmail}'.");
            }
        }

        public async Task<string> GetUserIdByUsername(string userName)
        {
            var user = await _userManager.FindByNameAsync(userName);
            return user.Id;
        }
    }
}
