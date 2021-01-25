using Application.Interfaces;
using Application.Queries;
using Domain.Models;
using System.Collections.Generic;
using System.Linq;

namespace Application.Services
{
    public class ArticleFilterService : IFilterService<Article, ArticleQuery>
    {
        public IQueryable<Article> AddAllFiltersQuery(ArticleQuery filter, IQueryable<Article> queryable)
        {
            return AddContentFilter(filter.TitleOrContent, AddTagFilter(filter.Tag, queryable));
        }
        public IQueryable<Article> AddContentFilter(string content, IQueryable<Article> articles)
        {
            if (!string.IsNullOrWhiteSpace(content) && articles.Any())
            {
                List<Article> query = new List<Article>();
                query.AddRange(articles.Where(o => o.Title.ToLower().Contains(content.Trim().ToLower()) ||
                                                          o.Content.ToLower().Contains(content.Trim().ToLower())).ToList());
                return query.AsQueryable();
            }
            return articles;
        }
        public IQueryable<Article> AddTagFilter(string tag, IQueryable<Article> articles)
        {
            if (!string.IsNullOrWhiteSpace(tag))
            {
                List<Article> query = new List<Article>();
                var tags = tag.ToLower().Split(',', ' ').ToHashSet();
                foreach (var article in articles)
                {
                    var tagNames = article.ArticleTags.Select(x => x.Tag.Name.ToLower().Trim(',', ' ')).ToList();
                    foreach (var itemTag in tags)
                    {
                        if (tagNames.Contains(itemTag))
                        {
                            query.Add(article);
                            break;

                        }
                    }

                }
                return query.AsQueryable();
            }
            return articles;
        }
    }
}
