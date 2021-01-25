namespace Domain.Models
{
    public class UserHelp
    {
        public string UserId { get; set; }

        public User User { get; set; }

        public int HelpId { get; set; }

        public Help Help { get; set; }

        public string Comment { get; set; }

        public override bool Equals(object obj)
        {
            var userHelp = obj as UserHelp;

            return userHelp != null && UserId.Equals(userHelp.UserId) &&
                HelpId == userHelp.HelpId;
        }

        public override int GetHashCode()
        {
            return UserId.GetHashCode() + HelpId.GetHashCode();
        }
    }
}
