using Domain.Common;

namespace Domain.Models
{
    public class ArticleImage : AnimalBase
    {
        public long Id { get; set; }
        public string FileName { get; set; }
        public string ImageData { get; set; }
        public long ArticleId { get; set; }
        public Article Article { get; set; }
    }
}
