using Application.DTO.Help;
using Application.Interfaces;
using Persistance.Interfaces;
using Domain.Models;
using System.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using Application.Exceptions;

namespace Application.Services
{
    public class HelpService: IHelpService
    {
        private readonly IRepository<Help> _repo;

        private readonly IMapper _mapper;

        public HelpService(IRepository<Help> repo, IMapper mapper)
        {
            _repo = repo;
            _mapper = mapper;
        }

        public async Task<IEnumerable<HelpDto>> GetAll()
        {
           return (await _repo.GetAllAsync()).Select(obj =>  _mapper.Map<HelpDto>(obj)).ToList();
        }

        public async Task<HelpDto> GetById(int id)
        {
            var help = await _repo.GetByIdAsync(id);

            if (help == null)
            {
                throw new ObjectNotFoundException($"Object {id} can not be found");
            }
            return new HelpDto() { Id = help.Id, KindOfHelp = help.KindOfHelp };
        }

        public async Task AddHelp(string help)
        {
            await _repo.AddAsync(new Help() { KindOfHelp = help });
        }

        public async Task DeleteHelp(string help)
        {
            var helpObj =  await _repo.SingleOrDefaultAsync(obj => obj.KindOfHelp.Equals(help));

            if (helpObj == null)
            {
                throw new ObjectNotFoundException($"Object {help} can not be found");
            }
            await _repo.Remove(helpObj);
        }

    }
}
