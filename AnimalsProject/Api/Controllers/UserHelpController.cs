using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Application.Common.Constants;
using Application.DTO.User;
using Application.Exceptions;
using Application.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class UserHelpController : ControllerBase
    {
        private readonly IUserHelpService _service;

        public UserHelpController(IUserHelpService service)
        {
            _service = service;
        }

        [HttpPost("add")]
        public async Task<IActionResult> Add(UserHelpSetInDto help)
        {
            try
            {
                var userEmail = User.Identity.Name;
                await _service.Add(help.userHelp, userEmail);
                return Ok();
            }
            catch(ArgumentException ex)
            {
                return BadRequest(ex.Message);
            }
            catch(ObjectNotFoundException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch(ObjectCreateException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (Exception)
            {
                return BadRequest(ExceptionStrings.CreateUserHelpException);
            }
        }
        
        [HttpGet("userHelp")]
        public async Task<ActionResult<UserHelpDto>> GetHelpByUser()
        {
            try
            {
                var userEmail = User.Identity.Name;
                var userHelp = await _service.GetHelpByUser(userEmail);
                return Ok(userHelp);
            }
            catch(ArgumentException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (ObjectNotFoundException ex)
            {
                return BadRequest(ex);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [Authorize(Roles = "SuperAdmin, Admin")]
        [HttpGet("users/{helpId}")]
        public ActionResult<IEnumerable<UserHelpOutDto>> GetUsersByHelp(int helpId)
        {
            try
            {
                var usersHelp = _service.GetUsersByHelp(helpId);
                return Ok(usersHelp);
            }
            catch(ArgumentException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPut("update")]
        public async Task<IActionResult> Update(UserHelpSetInDto help)
        {
            try
            {
                var userEmail = User.Identity.Name;
                await _service.Update(help.userHelp, userEmail);
                return Ok();
            }
            catch (ArgumentException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (ObjectNotFoundException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}