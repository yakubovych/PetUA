using System;
using System.Threading.Tasks;
using Domain.Models;
using Microsoft.Azure.WebJobs;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Persistance.Interfaces;

namespace AzureFunctions
{
    public class AnimalProcessingNextDateCheck
    {
        private readonly IRepository<AnimalProcessing> _processingRepository;
        public AnimalProcessingNextDateCheck(IRepository<AnimalProcessing> processingRepository)
        {
            _processingRepository = processingRepository;
        }
        [FunctionName("AnimalProcessingNextDateCheck")]
        public async Task Run([TimerTrigger("0 */1 * * * *")]TimerInfo myTimer, ILogger log)
        {
            var animalProcessings = _processingRepository.GetAllQueryable()
                                                         .Include(p => p.Processing);
            foreach (var animalProcessing in animalProcessings)
            {
                if(animalProcessing.IsRepeat && DateTime.Now > animalProcessing.NextProcessingDate)
                {
                    if (animalProcessing.Processing.Type == "Anti-flea and anti-ticks processing")
                    {
                        animalProcessing.NextProcessingDate = animalProcessing.NextProcessingDate
                            .AddDays(int.Parse(Environment.GetEnvironmentVariable("Processing:NextAnti-FleaAndAnti-TicksProcessing")));
                    }
                    if (animalProcessing.Processing.Type == "Anti-worms processing")
                    {
                        animalProcessing.NextProcessingDate = animalProcessing.NextProcessingDate
                            .AddDays(int.Parse(Environment.GetEnvironmentVariable("Processing:NextAnti-WormProcessing")));
                    }
                    _processingRepository.Update(animalProcessing);
                }
            }
            await _processingRepository.SaveAsync();
            log.LogInformation($"C# Timer trigger function executed at: {DateTime.Now}");
        }
    }
}
