using System.ComponentModel.DataAnnotations;

namespace Application.DTO.ResetPassword
{
    public class ResetPasswordConfirmDto
    {
        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }

        public string UserId { get; set; }
        public string Token { get; set; }
    }
}
