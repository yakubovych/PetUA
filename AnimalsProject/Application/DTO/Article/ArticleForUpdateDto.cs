using Application.DTO.Tag;
using System.Collections.Generic;

namespace Application.DTO.Article
{
    public class ArticleForUpdateDto
    {
        public ArticleForUpdateDto()
        {
            Images = new List<ArticleImageDto>();
            Tags = new List<TagDto>();
        }
        public long Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public IList<ArticleImageDto> Images { get; set; }
        public IList<TagDto> Tags { get; set; }
    }
}