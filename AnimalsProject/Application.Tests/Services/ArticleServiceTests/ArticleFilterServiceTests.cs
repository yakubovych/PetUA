using Application.Interfaces;
using Application.Queries;
using Application.Services;
using Domain.Models;
using Moq;
using Newtonsoft.Json;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Application.Tests.Services.ArticleServiceTests
{
    [TestFixture]
    public class ArticleFilterServiceTests
    {
        private Mock<IFilterService<Article, ArticleQuery>> _articleFilterServiceMock;
        private ArticleFilterService _service;

        [SetUp]
        public void SetUp()
        {
            _articleFilterServiceMock = new Mock<IFilterService<Article, ArticleQuery>>();
            _service = new ArticleFilterService();
        }

        [Test]
        public void AddContentFilter_ContentIsNotNull_Success()
        {
            var content = "test2";
            var articles = GetTestArticles().AsQueryable();
            var query = new List<Article>();
            query.AddRange(articles.Where(o => o.Title.ToLower().Contains(content.Trim().ToLower()) ||
                            o.Content.ToLower().Contains(content.Trim().ToLower())).ToList());
            var expected = query.AsQueryable();

            var actual = _service.AddContentFilter(content, articles);

            var expectedSer = JsonConvert.SerializeObject(expected);
            var actualSer = JsonConvert.SerializeObject(actual);
            Assert.AreEqual(expectedSer, actualSer);
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
                    Created = new DateTime(2020,4,22)
                },
                new Article()
                {
                    Id = 2,
                    Title = "test2",
                    Content = "test2",
                    Created = new DateTime(2020,4,23)
                },
                new Article()
                {
                    Id = 3,
                    Title = "test3",
                    Content = "test3",
                    Created = new DateTime(2020,4,21)
                }
            };
            return articles;
        }
    }
}
