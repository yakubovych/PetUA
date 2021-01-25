using Domain.Common;

namespace Domain.Models
{
    public class ArticleTag : AnimalBase
    {
        public long ArticleId { get; set; }
        public Article Article { get; set; }
        public long TagId { get; set; }
        public Tag Tag { get; set; }
    }
}
