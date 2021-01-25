using Application.DTO.User;
using Domain.Models;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface ITokenService
    {
        Task<string> GenerateAccessToken(User user);

        string GenerateRefreshToken();

        Task<User> GetUserFromExpiredToken(string token);

        Task<UserTokenDto> RefreshToken(UserTokenDto userToken);

        Task Revoke(string userEmail);
    }
}
