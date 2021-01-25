namespace Application.DTO.User
{
    public class UserRegistrationDto
    {
        public string FullName { get; set; }

        public string PhoneNumber { get; set; }

        public string Email { get; set; }

        public long AddressId { get; set; }

        public string Password { get; set; }

        public string ConfirmPassword { get; set; }
    }
}
