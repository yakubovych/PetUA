using Application.Interfaces;
using Application.Services;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Persistance.Data;
using Persistance.Interfaces;
using Persistance.Repositories;
using PhoneClaimsFunctionApp;
using System;

[assembly: WebJobsStartup(typeof(Startup))]
namespace PhoneClaimsFunctionApp
{
    public class Startup : IWebJobsStartup
    {
        public void Configure(IWebJobsBuilder builder)
        {
            builder.Services.AddScoped(typeof(IRepository<>), typeof(Repository<>));
            builder.Services.AddScoped<IIsNewService, IsNewService>();

            builder.Services.AddDbContext<AnimalContext>(cfg =>
            {
                cfg.UseSqlServer(
                    Environment.GetEnvironmentVariable("ConnectionString"));
            });
        }
    }
}