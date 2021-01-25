using System;
using System.Linq;
using System.Threading.Tasks;
using Application.DTO.Article;
using Application.Filters;
using Application.Interfaces;
using Application.Queries;
using AutoMapper;
using Persistance.Interfaces;
using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Application.Helpers;

namespace Application.Services
{
    public class ArticleService : IArticleService
    {
        private readonly IRepository<Article> _articleRepository;
        private readonly IRepository<ArticleImage> _images;
        private readonly IRepository<ArticleTag> _tags;
        private readonly IStatisticService<Article> _statisticService;
        private readonly IMapper _mapper;
        private readonly IUriService _uriService;
        private readonly IFilterService<Article, ArticleQuery> _articleFilterService;
        public ArticleService(IRepository<Article> articleRepository, IRepository<ArticleImage> images,
            IRepository<ArticleTag> tags, IStatisticService<Article> statisticService,
            IMapper mapper, IUriService uriService,
            IFilterService<Article, ArticleQuery> articleFilterService)
        {
            _articleRepository = articleRepository;
            _statisticService = statisticService;
            _images = images;
            _tags = tags;
            _mapper = mapper;
            _uriService = uriService;
            _articleFilterService = articleFilterService;
        }

        public Pagination<ArticleDto> GetAllArticles(ArticleFilter filters = null, ArticlePaginationFilter pagination = null)
        {
            var filterQuery = _mapper.Map<ArticleQuery>(filters);
            var paginationQuery = _mapper.Map<ArticlePaginationQuery>(pagination);
            var skip = (paginationQuery.PageNumber - 1) * paginationQuery.PageSize;
            var articles = GetArticlesWithIncludes().OrderByDescending(x => x.Created);
            var filteredArticles = _articleFilterService.AddAllFiltersQuery(filterQuery, articles).ToList();
            var articlesResult = filteredArticles.Select(x => _mapper.Map<ArticleDto>(x)).Skip(skip).Take(paginationQuery.PageSize);
            var paginationResponse = PaginationHelper.CreatePaginatedResponse(_uriService, paginationQuery,
                articlesResult.ToList(), filteredArticles.ToList(), "/Article", filterQuery);
            return paginationResponse;
        }

        public  ArticleDto GetArticle(long id)
        {
            var article = GetArticlesWithIncludes().FirstOrDefault(a => a.Id == id);
            var articleDto = _mapper.Map<ArticleDto>(article);
            return articleDto;
        }
        public async Task PublishArticle(ArticleForCreationDto articleRequest)
        {
            try
            {
                var article = _mapper.Map<Article>(articleRequest);
                await _articleRepository.AddAsync(article);
                _tags.TryCreateManyToMany(articleRequest.Tags.Select(x => new ArticleTag
                {
                    TagId = x.Id,
                    ArticleId = article.Id
                }));
                await _tags.SaveAsync();
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException(ex.Message);
            }
        }
        public async Task UpdateArticle(ArticleForUpdateDto article)
        {
            var articleFromDb = GetArticlesWithIncludes().FirstOrDefault(art => art.Id == article.Id);
            await _images.SaveAsync();
            _mapper.Map(article, articleFromDb);
            _articleRepository.Update(articleFromDb);
            await _articleRepository.SaveAsync();
        }
        public async Task<ArticleDto> DeleteArticle(long id)
        {
            var article = await _articleRepository.GetByIdAsync(id);
            if (article == null)
            {
                throw new ArgumentNullException(nameof(id), "article not found");
            }
            await _articleRepository.Remove(article);
            var articleDto = _mapper.Map<ArticleDto>(article);
            return articleDto;
        }
        public async Task<ArticleStatisticDto> GetStatistc(long id)
        {
            var articleStatistic = _mapper.Map<ArticleStatisticDto>(await _statisticService.GetStatistic(id));
            return articleStatistic;
        }

        private IQueryable<Article> GetArticlesWithIncludes()
        {
            return _articleRepository.GetAllQueryable().Include(a => a.ArticleTags)
                .ThenInclude(t => t.Tag).AsNoTracking().Include(a => a.Images);
        }
    }
}
