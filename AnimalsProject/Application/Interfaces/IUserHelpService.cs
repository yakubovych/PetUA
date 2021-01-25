using Application.DTO.User;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IUserHelpService
    {
        Task Add(IEnumerable<UserHelpInDto> userHelp, string userEmail);

        Task<UserHelpDto> GetHelpByUser(string userEmail);

        IEnumerable<UserHelpOutDto> GetUsersByHelp(int helpId);

        Task Update(IEnumerable<UserHelpInDto> userHelp, string userEmail);
    }
}
