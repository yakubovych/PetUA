using Application.DTO.Tag;
using System.Collections.Generic;

namespace Application.DTO.Article
{
    public class ArticleDto
    {
        public ArticleDto()
        {
            Images = new List<ArticleImageDto>();
            Tags = new List<TagDto>();
        }
        public long Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public string UserEmall { get; set; }
        public int ViewCount { get; set; }
        public IList<ArticleImageDto> Images { get; set; }
        public IList<TagDto> Tags { get; set; }
        public override bool Equals(object obj)
        {
            return obj is ArticleDto dto &&
                   Id == dto.Id;
        }
        public override int GetHashCode()
        {
            return Id.GetHashCode();
        }
    }
}
