using System.Collections.Generic;

namespace Domain.Models
{
    public class Help
    {
        public int Id { get; set; }

        public string KindOfHelp { get; set; }

        public IList<UserHelp> UserHelps { get; set; }

        public Help()
        {
            UserHelps = new List<UserHelp>();
        }
    }
}
