using System.Linq;

namespace Application.Interfaces
{
    public interface IFilterService<FilterEntity, Filter>
    {
        IQueryable<FilterEntity> AddAllFiltersQuery(Filter filter, IQueryable<FilterEntity> queryable);

    }
}
