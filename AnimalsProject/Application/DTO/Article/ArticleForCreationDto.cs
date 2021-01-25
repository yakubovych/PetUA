using Application.DTO.Tag;
using System.Collections.Generic;

namespace Application.DTO.Article
{
    public class ArticleForCreationDto
    {
        public ArticleForCreationDto()
        {
            Images = new List<ArticleImageForCreationDto>();
            Tags = new List<TagDto>();
        }
        public string Title { get; set; }
        public string Content { get; set; }
        public IList<ArticleImageForCreationDto> Images { get; set; }
        public IList<TagDto> Tags { get; set; }
    }
}
