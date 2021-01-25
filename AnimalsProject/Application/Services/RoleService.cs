using Application.Common.Constants;
using Application.DTO.User;
using Application.Exceptions;
using Application.Interfaces;
using Domain.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Configuration;
using System.Threading.Tasks;

namespace Application.Services
{
    public class RoleService: IRoleService
    {
        private readonly UserManager<User> _userManager;

        private readonly IConfiguration _configuration;

        public RoleService(UserManager<User> userManager, IConfiguration configuration)
        {
            _userManager = userManager;
            _configuration = configuration;
        }

        public async Task PromoteToRole(UserRoleDto userRole)
        {
            var admin = await _userManager.FindByEmailAsync(userRole.Email.ToUpper());
            if (admin != null)
            {
                var assignToRoleResult = await _userManager.AddToRoleAsync(admin, userRole.Role);
                if (!assignToRoleResult.Succeeded)
                {
                    throw new RoleException(ExceptionStrings.RolePromoteException, userRole.Email, userRole.Role);
                }
            }
            throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, userRole.Email);
        }

        public async Task DemoteFromRole(UserRoleDto userRole)
        {
            var admin = await _userManager.FindByEmailAsync(userRole.Email.ToUpper());

            if (admin != null && !admin.Email.Equals(_configuration["MAINSUPERADMIN"]))
            {
                var unassignRoleResult = await _userManager.RemoveFromRoleAsync(admin, userRole.Role);
                if (!unassignRoleResult.Succeeded)
                {
                    throw new RoleException(ExceptionStrings.RoleDemoteException, userRole.Email, userRole.Role);
                }
            }
            throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, userRole.Email);
        }
    }
}
