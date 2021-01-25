using Application.Interfaces;
using Domain.Models;
using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Threading.Tasks;

namespace Application.ActionFilter
{
    public class ArticleStatisticFilter : Attribute, IAsyncActionFilter
    {

        private readonly IStatisticService<Article> _statisticService;
        public ArticleStatisticFilter(IStatisticService<Article> statisticService)
        {
            _statisticService = statisticService ?? throw new ArgumentNullException(nameof(statisticService));
        }


        public async Task OnActionExecutionAsync(ActionExecutingContext context, ActionExecutionDelegate next)
        {
            object routeData;
            context.RouteData.Values.TryGetValue("id", out routeData);
            long articleId = 0;
            if (long.TryParse(routeData.ToString(), out articleId))
            {
                try
                {
                    await _statisticService.UpdateStatistic(articleId);
                }
                catch (Exception)
                {
                    await next();
                }             
            }
            await next();
        }
    }
}
