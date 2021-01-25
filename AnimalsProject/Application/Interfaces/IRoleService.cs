using Application.DTO.User;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IRoleService
    {
        Task PromoteToRole(UserRoleDto userRole);

        Task DemoteFromRole(UserRoleDto userRole);
    }
}
