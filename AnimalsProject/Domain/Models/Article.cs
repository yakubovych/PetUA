using Domain.Common;
using System.Collections.Generic;

namespace Domain.Models
{
    public class Article : Viewable
    {
        public Article()
        {
            Images = new List<ArticleImage>();
            ArticleTags = new List<ArticleTag>();
        }
        public long Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public string UserId { get; set; }
        public User User { get; set; }
        public IList<ArticleImage> Images { get; set; }
        public IList<ArticleTag> ArticleTags { get; set; }

    }
}
