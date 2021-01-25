using Application.DTO.Help;
using System.Collections.Generic;

namespace Application.DTO.User
{
    public class UserHelpDto
    {
        public List<HelpDto> Help { get; set; }

        public string Comment { get; set; }
    }
}
