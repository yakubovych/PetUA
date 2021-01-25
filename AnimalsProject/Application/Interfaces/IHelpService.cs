using Application.DTO.Help;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IHelpService
    {
        Task<IEnumerable<HelpDto>> GetAll();

        Task<HelpDto> GetById(int id);

        Task AddHelp(string help);

        Task DeleteHelp(string help);
    }
}
