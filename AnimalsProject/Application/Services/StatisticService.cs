using Application.Interfaces;
using Domain.Common;
using Persistance.Interfaces;
using System.Threading.Tasks;
using Application.Exceptions;

namespace Application.Services
{
    public class StatisticService<TViewable> : IStatisticService<TViewable> where TViewable : Viewable
    {
        private readonly IRepository<TViewable> _repository;

        public StatisticService(IRepository<TViewable> repository)
        {
            _repository = repository;
        }
        public async Task<TViewable> GetStatistic(long id)
        {
            var viewable = await _repository.GetByIdAsync(id);
            if(viewable == null)
            {
                throw new ObjectNotFoundException();
            }
            return viewable;
        }

        public async Task UpdateStatistic(long id)
        {
            var viewable = await _repository.GetByIdAsync(id);
            if (viewable == null)
            {
                throw new ObjectNotFoundException();
            }
            ++viewable.ViewCount;     
            _repository.Update(viewable);
            await _repository.SaveAsync();
        }
    }
}
