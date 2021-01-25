using Application.DTO.Article;
using Application.Filters;
using Domain.Models;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IArticleService
    {
        Pagination<ArticleDto> GetAllArticles(ArticleFilter filters = null, ArticlePaginationFilter pagination = null);
        ArticleDto GetArticle(long id);
        Task PublishArticle(ArticleForCreationDto articleRequest);
        Task UpdateArticle(ArticleForUpdateDto article);
        Task<ArticleDto> DeleteArticle(long id);
        Task<ArticleStatisticDto> GetStatistc(long id);

    }
}
