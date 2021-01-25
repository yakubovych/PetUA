using System;
using System.Threading.Tasks;
using Application.DTO.User;
using Application.DTO.ResetPassword;
using Application.Exceptions;
using Application.Helpers;
using Application.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System.Net;
using Microsoft.AspNetCore.Authorization;
using System.IO;
using Application.Validators.ModelValidators;
using Application.Validators.ParameterValidators;
using Microsoft.Extensions.Logging;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : ControllerBase
    {
        private readonly IUserService _service;
        private readonly IConfiguration _configuration;
        private readonly ILogger _logger;

        public AccountController(IUserService service, IConfiguration configuration, ILogger<AccountController> logger)
        {
            _service = service;
            _configuration = configuration;
            _logger = logger;
        }

        [Authorize]
        [HttpPut("UpdateProfile")]
        public async Task<ActionResult> Update([FromBody]UserDto user, string returnUrl)
        {
            var id = await _service.GetUserIdByUsername(User.Identity.Name);
            if (id != user.Id)
            {
                return BadRequest();
            }
            try
            {
                await _service.UpdateProfile(user, returnUrl);
                return Ok("Profile has been updated");
            }
            catch (InvalidOperationException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (ObjectUpdateException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody]UserLoginDto user)
        {
            try 
            { 
                var tokens = await _service.LoginAsync(user);
                var userRoles = await _service.GetUserRoles(user.Email);
                CookieHelper.CreateCookie(_configuration, HttpContext.Response, user.RememberMe, tokens);
                return Ok(userRoles);
            }
            catch (LoginException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (ObjectNotFoundException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (IOException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        
        [HttpPost("logout")]
        public IActionResult Logout()
        {
            try
            {
                CookieHelper.CleanCookies(_configuration, HttpContext.Response);
                return NoContent();
            }
            catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
            
        }

        [HttpPost("register")]
        public async Task<IActionResult> Register([FromBody]UserRegistrationDto user, string returnUrl)
        {
            try
            {
                new RegistrationModelValidator(user).ValidateModel();
                await _service.RegisterAsync(user, returnUrl);
                return Accepted();
            }
            catch (RegisterException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (ArgumentException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (ValidationException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (IOException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (SendEmailException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpGet("confirm")]
        public async Task ConfirmEmail(string userId, string token, string returnUrl)
        {
            try
            {
                await _service.ConfirmEmailAsync(userId, token);
                Response.Redirect(returnUrl);
            }
            catch(ObjectNotFoundException ex)
            {
                Response.StatusCode =(int)HttpStatusCode.BadRequest;
                await Response.WriteAsync(ex.ToString());
            }
            catch(ObjectUpdateException ex)
            {
                Response.StatusCode = (int)HttpStatusCode.BadRequest;
                await Response.WriteAsync(ex.ToString());
            }
            catch(ArgumentException ex)
            {
                Response.StatusCode = (int)HttpStatusCode.BadRequest;
                await Response.WriteAsync(ex.ToString());
            }
            catch (Exception ex)
            {
                Response.StatusCode = (int)HttpStatusCode.BadRequest;
                await Response.WriteAsync(ex.ToString());
            }
        }

        [HttpPost("forgot")]
        public async Task<IActionResult> ForgotPassword([FromBody]ResetPasswordDto resetPasswordDto, string returnUrl)
        {
            try
            {
                await _service.ForgotPasswordAsync(resetPasswordDto, returnUrl);
                return Accepted();
            }
            catch (ObjectNotFoundException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (ArgumentException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (IOException ex)
            {
                return BadRequest(ex);
            }
            catch (SendEmailException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
     
        [HttpPost("reset")]
        public async Task<IActionResult> ResetPassword([FromBody]ResetPasswordConfirmDto resetPasswordDto)
        {
            try
            {
                new PasswordValidator(resetPasswordDto.Password, resetPasswordDto.ConfirmPassword).Validate();
                await _service.ResetPasswordAsync(resetPasswordDto);
                return Ok();
            }
            catch (ObjectNotFoundException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (ObjectUpdateException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (ArgumentException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (ValidationException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [Authorize]
        [HttpDelete("DeleteProfile")]
        public async Task<ActionResult> Delete()
        {
            try
            {
                var userEmail = User.Identity.Name;
                await _service.DeleteProfile(userEmail);
                return Ok("Successfully deleted profile");
            }
            catch (ObjectNotFoundException ex)
            {
                return NotFound(ex.Message);
            }
            catch (InvalidOperationException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
