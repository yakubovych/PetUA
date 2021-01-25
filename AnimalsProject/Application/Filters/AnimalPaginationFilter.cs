namespace Application.Filters
{
    public class AnimalPaginationFilter
    {
        public int PageNumber { get; set; } = 1;
        public int PageSize { get; set; } = 15;
    }
}
