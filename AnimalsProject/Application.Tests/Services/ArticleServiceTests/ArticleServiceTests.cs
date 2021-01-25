using Application.Services;
using AutoMapper;
using Persistance.Interfaces;
using Domain.Models;
using Moq;
using NUnit.Framework;
using System.Collections.Generic;
using System.Linq;
using Application.Interfaces;
using System.Threading.Tasks;
using Application.DTO.Article;
using Application.Filters;
using Application.Queries;
using Newtonsoft.Json;

namespace Application.Tests.Services.ArticleServiceTests
{
    public class ArticleServiceTests
    {
        private IMapper _mapper;
        private IArticleService _service;
        private Mock<IRepository<Article>> _articleRepositoryMock;
        private Mock<IRepository<ArticleImage>> _imagesMock;
        private Mock<IRepository<ArticleTag>> _tagsMock;
        private Mock<IUriService> _uriServiceMock;
        private Mock<IStatisticService<Article>> _statisticServiceMock;
        private Mock<IFilterService<Article, ArticleQuery>> _articleFilterServiceMock;

        [SetUp]
        public void SetUp()
        {
            _mapper = Mapper.GetMapper;
            _articleFilterServiceMock = new Mock<IFilterService<Article, ArticleQuery>>();
            _statisticServiceMock = new Mock<IStatisticService<Article>>();
            _articleRepositoryMock = new Mock<IRepository<Article>>();
            _imagesMock = new Mock<IRepository<ArticleImage>>();
            _tagsMock = new Mock<IRepository<ArticleTag>>();
            _uriServiceMock = new Mock<IUriService>();
            _service = new ArticleService(_articleRepositoryMock.Object,
                _imagesMock.Object, _tagsMock.Object, _statisticServiceMock.Object, 
                _mapper, _uriServiceMock.Object, _articleFilterServiceMock.Object);
        }

        [Test]
        public void GetArticleById_ReslutValueEqualExpected_Success()
        {
            var articles = GetTestArticles().AsQueryable();
            var id = 1;
            var article = articles.FirstOrDefault(a => a.Id == id);
            var articleDto = _mapper.Map<ArticleDto>(article);
            _articleRepositoryMock.Setup(x => x.GetAllQueryable()).Returns(articles);

            var actual =_service.GetArticle(id);

            Assert.AreEqual(articleDto, actual);
        }

        [Test]
        public async Task PublishArticle_Success()
        {
            var articleDto = new ArticleForCreationDto()
            {
                Title = "test"
            };
            var article = _mapper.Map<Article>(articleDto);
            _articleRepositoryMock.Setup(x => x.AddAsync(article));
            _tagsMock.Setup(x => x.TryCreateManyToMany(It.IsAny<IEnumerable<ArticleTag>>()));
            _tagsMock.Setup(x => x.SaveAsync());

            await _service.PublishArticle(articleDto);

            _tagsMock.Verify(x => x.TryCreateManyToMany(It.IsAny<IEnumerable<ArticleTag>>()), Times.Once());
            _tagsMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        [Test]
        public async Task UpdateArticle_Success()
        {
            var articleImages = new HashSet<ArticleImage>()
            {
                new ArticleImage()
                {
                    Id = 1,
                    Article = new Article()
                    {
                        Id = 1
                    },
                    ArticleId = 1
                },
                new ArticleImage()
                {
                    Id = 2,
                    Article = new Article()
                    {
                        Id = 2
                    },
                    ArticleId = 2
                }
            };
            var articleDto = new ArticleForUpdateDto() { Id = 1, Content = "test" };
            var article = GetTestArticles().AsQueryable().FirstOrDefault(art => art.Id == articleDto.Id);
            _articleRepositoryMock.Setup(x => x.Update(article));
            _articleRepositoryMock.Setup(x => x.SaveAsync());

            await _service.UpdateArticle(articleDto);

            _articleRepositoryMock.Verify(x => x.Update(It.IsAny<Article>()), Times.Once());
            _articleRepositoryMock.Verify(x => x.SaveAsync(), Times.Once());
        }

        [Test]
        public async Task DeleteArticle_ReslutValueEqualExpected_Success()
        {
            var article = new Article() { Id = 1 };
            var id = article.Id;
            var articleDto = _mapper.Map<ArticleDto>(article);
            _articleRepositoryMock.Setup(x => x.GetByIdAsync(id)).ReturnsAsync(article);
            _articleRepositoryMock.Setup(x => x.Remove(article));

            var actual = await _service.DeleteArticle(id);

            Assert.AreEqual(articleDto, actual);
            _articleRepositoryMock.Verify(x => x.Remove(It.IsAny<Article>()), Times.Once());
        }

        [Test]
        public void GetAllArticles_WithoutFilters_Success()
        {
            var filter = new ArticleFilter();
            var pagination = new ArticlePaginationFilter() { PageNumber = 1, PageSize = 5 };
            var filterQuery = _mapper.Map<ArticleQuery>(filter);
            var articles = GetTestArticles().AsQueryable().OrderByDescending(x => x.Created);
            var filteredArticles = articles.Select(x => _mapper.Map<ArticleDto>(x)).ToList();
            _articleRepositoryMock.Setup(x => x.GetAllQueryable()).Returns(articles);
            _articleFilterServiceMock.Setup(x => x.AddAllFiltersQuery(filterQuery, articles))
                .Returns(articles);

            var actual = _service.GetAllArticles(filter, pagination);

            var expectedSer = JsonConvert.SerializeObject(filteredArticles);
            var actualSer = JsonConvert.SerializeObject(actual.Data);
            //Assert.AreEqual(1, actual.TotalPages);
            Assert.AreEqual(pagination.PageSize, actual.PageSize);
            Assert.AreEqual(pagination.PageNumber, actual.PageNumber);
            //Assert.AreEqual(expectedSer, actualSer);
        }


        private IEnumerable<Article> GetTestArticles()
        {
            var articles = new List<Article>()
            {
                new Article()
                {
                    Id = 1,
                    Title = "test1",
                    Content = "test1",
                    Created = new System.DateTime(2020,4,22)
                },
                new Article()
                {
                    Id = 2,
                    Title = "test2",
                    Content = "test2",
                    Created = new System.DateTime(2020,4,23)
                },
                new Article()
                {
                    Id = 3,
                    Title = "test3",
                    Content = "test3",
                    Created = new System.DateTime(2020,4,21)
                }
            };
            return articles;
        }
    }
}
