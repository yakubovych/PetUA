using Application.DTO.User;
using Application.Exceptions;
using Application.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AdminController : ControllerBase
    {
        private readonly IMainAdminService _adminService;
        public AdminController(IMainAdminService adminService)
        {
            _adminService = adminService;
        }

        [Authorize(Roles = "SuperAdmin")]
        [HttpDelete("delete-user/{id}")]
        public async Task<IActionResult> DeleteUser(string id)
        {
            try 
            {
                await _adminService.DeleteUser(id);
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
            catch (ObjectDeleteException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
            
        }

        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet("getUsersInRole/{role}")]
        public async Task<ActionResult<IEnumerable<UserDto>>> GetUsers(string role)
        {
            try
            {
                var users = await _adminService.GetUsersInRole(role);
                return Ok(users);
            }
            catch (ArgumentNullException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (RoleException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet("AllUsers")]
        public ActionResult<IEnumerable<UserIncludeValuesDto>> GetUsers()
        {
            try
            {
                var users = _adminService.GetUsers();
                return Ok(users);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet("get/users-with-name/{name}")]
        public ActionResult<IEnumerable<UserIncludeValuesDto>> GetUsersByName(string name)
        {
            try
            {
                var users = _adminService.GetUsersByName(name);
                return Ok(users);
            }
            catch (ArgumentNullException ex)
            {
                return BadRequest(ex.Message);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet("get/users-in-location/{locationId}")]
        public ActionResult<IEnumerable<UserIncludeValuesDto>> GetUsersByLocation(long locationId)
        {
            try
            {
                var users = _adminService.GetUsersByLocation(locationId);
                return Ok(users);
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
        
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet("get/user-with-email/{email}")]
        public ActionResult<UserIncludeValuesDto> GetUserByEmail(string email)
        {
            try
            {
                var user = _adminService.GetUserByEmail(email);
                return Ok(user);
            }
            catch (ArgumentNullException ex)
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
        
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpGet("get/user-with-phone-number/{phoneNumber}")]
        public ActionResult<IEnumerable<UserIncludeValuesDto>> GetUserByPhoneNumber(string phoneNumber)
        {
            try
            {
                var user = _adminService.GetUserByPhoneNumber(phoneNumber);
                return Ok(user);
            }
            catch(ArgumentNullException ex)
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
