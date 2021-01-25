namespace Application.Queries
{
    public class ArticlePaginationQuery
    {
        public int PageNumber { get; set; } = 1;
        public int PageSize { get; set; } = 5;
    }
}
