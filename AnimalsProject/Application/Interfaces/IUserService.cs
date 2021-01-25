using Application.DTO.User;
using Application.DTO.ResetPassword;
using System.Threading.Tasks;
using System.Collections.Generic;

namespace Application.Interfaces
{
    public interface IUserService
    {
        Task UpdateProfile(UserDto model, string returnUrl);

        Task RegisterAsync(UserRegistrationDto model, string returnUrl);

        Task<UserTokenDto> LoginAsync(UserLoginDto model);

        Task ConfirmEmailAsync(string userId, string token);

        Task ForgotPasswordAsync(ResetPasswordDto model, string returnUrl);

        Task ResetPasswordAsync(ResetPasswordConfirmDto model);

        Task<IList<string>> GetUserRoles(string userEmail);

        Task<string> GetUserIdByUsername(string userName);

        Task DeleteProfile(string userEmail);
    }
}
