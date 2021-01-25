using Application.DTO.User;
using Application.Exceptions;
using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using System;

namespace Api.Controllers
{  
    [Authorize(Roles="SuperAdmin")]
    [Route("api/[controller]")]
    [ApiController]
    public class RoleController : ControllerBase
    {
        private readonly IRoleService _roleService;

        public RoleController(IRoleService roleService)
        {
            _roleService = roleService;
        }

        [HttpPost("promote")]
        public async Task<IActionResult> PromoteToRole(UserRoleDto userRole)
        {
            try {
                await _roleService.PromoteToRole(userRole);
                return NoContent();
            }
            catch(RoleException ex) {
                return BadRequest(ex.ToString());
            }
            catch(ObjectNotFoundException ex)
            {
                return BadRequest(ex.ToString());
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        
        [HttpPost("demote")]
        public async Task<IActionResult> DemoteFromRole(UserRoleDto userRole)
        {
            try
            {
                await _roleService.DemoteFromRole(userRole);
                return NoContent();
            }
            catch (RoleException ex)
            {
                return BadRequest(ex.ToString());
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