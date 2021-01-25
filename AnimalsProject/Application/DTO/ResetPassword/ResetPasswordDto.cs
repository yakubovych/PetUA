using System.ComponentModel.DataAnnotations;

namespace Application.DTO.ResetPassword
{
    public class ResetPasswordDto
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }
    }
}
