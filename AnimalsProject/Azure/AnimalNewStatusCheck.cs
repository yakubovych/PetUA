using System.Linq;
using System.Threading.Tasks;
using Application.Interfaces;
using Domain.Enums;
using Domain.Models;
using Microsoft.Azure.WebJobs;
using Microsoft.Extensions.Logging;
using Persistance.Interfaces;

namespace AzureFunctions
{
    public class AnimalNewStatusCheck
    {
        private readonly IRepository<Animal> _repository;
        private readonly IIsNewService _isNewService;

        public AnimalNewStatusCheck(IRepository<Animal> repository, IIsNewService isNewService)
        {
            _repository = repository;
            _isNewService = isNewService;
        }
        [FunctionName("AnimalNewStatusCheck")]
        public async Task Run([TimerTrigger("0 */10 * * * *")]TimerInfo myTimer, ILogger log)
        {
            var animals = _repository.GetAllQueryable();
            log.LogInformation($"Got all animals from db");
            await _isNewService.UpdateAndGetByNew(animals.Where(x => x.Status != AnimalStatus.Adopted && !x.IsHidden));
            log.LogInformation($"Update new status");
        }
    }
}
