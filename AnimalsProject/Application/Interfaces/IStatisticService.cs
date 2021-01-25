using Domain.Common;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IStatisticService<TViewable> where TViewable : Viewable
    {
        Task UpdateStatistic(long id);
        Task<TViewable> GetStatistic(long id);
    }
}
