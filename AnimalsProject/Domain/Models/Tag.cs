using Domain.Common;
using System.Collections.Generic;

namespace Domain.Models
{
    public class Tag : AnimalBase
    {
        public Tag()
        {
            ArticleTags = new List<ArticleTag>();
        }
        public long Id { get; set; }
        public string Name { get; set; }
        public IList<ArticleTag> ArticleTags { get; set; }
    }
}
