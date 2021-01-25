using Application.Interfaces;
using Domain.Models;
using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Threading.Tasks;

namespace Application.ActionFilter
{

    public class AnimalStatisticFilter : Attribute, IAsyncActionFilter
    {

        private readonly IStatisticService<Animal> _statisticService;
        private readonly IAnimalViewLocationService _locationService;

        public AnimalStatisticFilter(IStatisticService<Animal> statisticService, IAnimalViewLocationService locationService)
        {
            _statisticService = statisticService ?? throw new ArgumentNullException(nameof(statisticService));
            _locationService = locationService ?? throw new ArgumentNullException(nameof(locationService));
        }


        public async Task OnActionExecutionAsync(ActionExecutingContext context, ActionExecutionDelegate next)
        {
            object routeData;
            context.RouteData.Values.TryGetValue("id", out routeData);
            long animalId = 0;
            if(long.TryParse(routeData.ToString(), out animalId))
            {
                try
                {
                    await _statisticService.UpdateStatistic(animalId);
                    await _locationService.UpdateViewLocationAsync(animalId);
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
