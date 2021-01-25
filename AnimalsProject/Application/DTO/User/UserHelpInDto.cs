namespace Application.DTO.User
{
    public class UserHelpInDto
    {
        public int HelpId { get; set; }

        public string Comment { get; set; }

        public override bool Equals(object obj)
        {
            var dto = obj as UserHelpInDto;
            return dto != null && HelpId == dto.HelpId;
        }

        public override int GetHashCode()
        {
            return HelpId.GetHashCode();
        }
    }
}
