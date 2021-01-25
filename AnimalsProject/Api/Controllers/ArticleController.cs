using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Application.ActionFilter;
using Application.DTO.Article;
using Application.Filters;
using Application.Interfaces;
using Domain.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ArticleController : ControllerBase
    {
        private readonly IArticleService _articleService;
        public ArticleController(IArticleService articleService)
        {
            _articleService = articleService;
        }
        [HttpGet]
        public ActionResult<Pagination<IEnumerable<ArticleDto>>> GetAllArticles([FromQuery] ArticleFilter articleFilters = null,
            [FromQuery] ArticlePaginationFilter pagination = null)
        {
            try
            {
                var articles = _articleService.GetAllArticles(articleFilters, pagination);
                return Ok(articles);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [HttpGet]
        [Route("[action]/{id}")]
        [TypeFilter(typeof(ArticleStatisticFilter))]
        public ActionResult<ArticleDto> GetArticle(long id)
        {
            try
            {
                var articles =  _articleService.GetArticle(id);
                return Ok(articles);
            }
            catch(Exception ex)
            {
                return NotFound(ex);
            }
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpPost("PublishArticle")]
        public async Task<ActionResult> Create(ArticleForCreationDto article)
        {
            try
            {
                if (article == null)
                    return BadRequest();
                await _articleService.PublishArticle(article);
                return NoContent();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpPut("UpdateArticle")]
        public async Task<ActionResult> Update(ArticleForUpdateDto article)
        {
            try
            {
                await _articleService.UpdateArticle(article);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
            return NoContent();
        }
        [Authorize(Roles = "SuperAdmin,Admin")]
        [HttpDelete("{id}")]
        public async Task<ActionResult<ArticleDto>> Delete(int id)
        {
            try
            {
                var article = await _articleService.DeleteArticle(id);
                return Ok(article);
            }
            catch (Exception ex)
            {
                return NotFound(ex.Message);
            }
        }
        [HttpGet]
        [Route("[action]/{id}")]
        public async Task<ArticleStatisticDto> GetStatistc(long id)
        {
            var animalStatistic = await _articleService.GetStatistc(id);
            return animalStatistic;
        }
    }
}