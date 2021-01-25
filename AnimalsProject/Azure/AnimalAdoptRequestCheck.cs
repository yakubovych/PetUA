using System;
using System.Threading.Tasks;
using Domain.Enums;
using Domain.Models;
using Microsoft.Azure.WebJobs;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Persistance.Interfaces;

namespace AzureFunctions
{
    public class AnimalAdoptRequestCheck
    {
        private readonly IRepository<AdoptOrder> _adoptRepository;
        public AnimalAdoptRequestCheck(IRepository<AdoptOrder> adoptRepository)
        {
            _adoptRepository = adoptRepository;
        }
        [FunctionName("AnimalAdoptRequestCheck")]
        public async Task Run([TimerTrigger("0 */5 * * * *")]TimerInfo myTimer, ILogger log)
        {
            var adoptOrders = _adoptRepository.GetAllQueryable()
                                              .Include(a => a.Animal);
            foreach (var item in adoptOrders)
            {
                if(DateTime.Now < item.EndingDate && item.Animal.Status == AnimalStatus.Booked)
                {
                    item.Status = OrderStatus.Declined;
                    item.Animal.Status = AnimalStatus.None;
                    _adoptRepository.Update(item);
                }
            }
            await _adoptRepository.SaveAsync();
            log.LogInformation($"C# Timer trigger function executed at: {DateTime.Now}");
        }
    }
}
