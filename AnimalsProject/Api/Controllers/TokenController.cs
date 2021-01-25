using Application.Exceptions;
using Application.Helpers;
using Application.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Threading.Tasks;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TokenController : ControllerBase
    {
        private readonly ITokenService _tokenService;

        private readonly IConfiguration _configuration;

        public TokenController(ITokenService tokenService, IConfiguration configuration)
        {
            _tokenService = tokenService;

            _configuration = configuration;
        }

        [HttpPut("refresh")]
        public async Task<IActionResult> Refresh()
        {
            try
            {
                var userToken = CookieHelper.GetTokenValue(_configuration, HttpContext.Request);
                var tokens = await _tokenService.RefreshToken(userToken);
                CookieHelper.RefreshCookie(_configuration, HttpContext.Request, HttpContext.Response, tokens);
                return NoContent();
            }
            catch (ObjectUpdateException ex)
            {
                return Forbid(ex.ToString());
            }
            catch (ObjectNotFoundException ex)
            {
                return Forbid(ex.ToString());
            }
            catch (ArgumentNullException ex)
            {
                return Forbid(ex.Message);
            }
            catch (ArgumentException ex)
            {
                return Forbid(ex.Message);
            }
            catch (SecurityTokenException ex)
            {
                return Forbid(ex.Message);
            }
            catch (Exception ex)
            {
                return Forbid(ex.Message);
            }
        }

        [HttpPost("revoke"), Authorize]
        public async Task<IActionResult> Revoke()
        {
            try
            {
                var userEmail = User.Identity.Name;
                await _tokenService.Revoke(userEmail);
                return NoContent();
            }
            catch (ObjectUpdateException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (ObjectNotFoundException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (ArgumentException ex)
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