using Application.DTO.User;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IMainAdminService
    {
        Task DeleteUser(string id);

        Task<IEnumerable<UserIncludeValuesDto>> GetUsersInRole(string role);

        IEnumerable<UserIncludeValuesDto> GetUsers();

        IEnumerable<UserIncludeValuesDto> GetUsersByName(string name);

        IEnumerable<UserIncludeValuesDto> GetUsersByLocation(long locationId);

        UserIncludeValuesDto GetUserByPhoneNumber(string phoneNumber);

        UserIncludeValuesDto GetUserByEmail(string email);
    }
}
