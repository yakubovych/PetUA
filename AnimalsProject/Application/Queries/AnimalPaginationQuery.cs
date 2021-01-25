namespace Application.Queries
{
    public class AnimalPaginationQuery
    {
        public int PageNumber { get; set; } = 1;
        public int PageSize { get; set; } = 15;
    }
}
