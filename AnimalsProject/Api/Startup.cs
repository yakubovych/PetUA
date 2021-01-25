using Application.Interfaces;
using Application.Mapper;
using Application.Middleware;
using Application.Services;
using AutoMapper;
using Azure.Storage.Blobs;
using Persistance.Interfaces;
using Domain.Models;
using Persistance.Data;
using Persistance.Repositories;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.Infrastructure;
using Application.ActionFilter;
using Application.Queries;
using Serilog;
using Application.Helpers;
using Application.Common.Interfaces;

namespace Api
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        { 
            services.AddCors();
            services.Configure<CookiePolicyOptions>(options =>
            {
                options.CheckConsentNeeded = context => true;
                options.MinimumSameSitePolicy = SameSiteMode.None;
            });
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo
                {
                    Version = "v1",
                    Title = "API",
                    Description = "Test API with ASP.NET Core 3.0"
                });

            });
            services.AddControllers();

            services.AddDbContext<AnimalContext>(cfg =>
            {
                cfg.UseSqlServer(
                    Configuration
                    .GetConnectionString("AnimalProjectConnectionString"));
            });

            services.AddIdentity<User, IdentityRole>(
                  options =>
                  {
                      options.SignIn.RequireConfirmedAccount = true;
                      options.User.RequireUniqueEmail = true;
                      options.Password.RequireNonAlphanumeric = false;
                  })
                    .AddEntityFrameworkStores<AnimalContext>()
                    .AddDefaultTokenProviders();

            JwtSecurityTokenHandler.DefaultInboundClaimTypeMap.Clear();
            services.AddAuthentication(options =>
                {
                    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                    options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
                    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
                }).AddJwtBearer(cfg =>
                {
                    cfg.RequireHttpsMetadata = false;
                    cfg.SaveToken = true;
                    cfg.TokenValidationParameters = new TokenValidationParameters
                    {
                        ValidIssuer = Configuration["JwtAuth:JwtIssuer"],
                        ValidAudience = Configuration["JwtAuth:JwtIssuer"],
                        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(Configuration["JwtAuth:JwtKey"])),
                        ClockSkew = TimeSpan.Zero
                    };
                });
            
            services.AddHttpContextAccessor();

            var mappingConfig = new MapperConfiguration(mc =>
            {
                mc.AddProfile(new AnimalMapper());
            });
            IMapper mapper = mappingConfig.CreateMapper();
            services.AddSingleton(mapper);

            services.AddScoped(typeof(IRepository<>), typeof(Repository<>));
            services.AddTransient<IAnimalLocationHistoryService, AnimalLocationHistoryService>();
            services.AddTransient<IEmailService, EmailService>();
            services.AddTransient<IEmailHelper, EmailHelper>();
            services.AddTransient<IHelpService, HelpService>();
            services.AddTransient<IUserHelpService, UserHelpService>();
            services.AddTransient<ITokenService, TokenService>();
            services.AddTransient<IUserService, UserService>();
            services.AddTransient<IMainAdminService, MainAdminService>();
            services.AddTransient<IRoleService, RoleService>();
            services.AddScoped<IAnimalService, AnimalService>();
            services.AddScoped<IDefectService, DefectService>();
            services.AddScoped<IAddressService, AddressService>();
            services.AddScoped<IAttitudeToService, AttitudeToService>();
            services.AddScoped<ICategoryService, CategoryService>();
            services.AddScoped<IFoodService, FoodService>();
            services.AddScoped<IStatusService, StatusService>();
            services.AddScoped<IKeepingService, KeepingService>();
            services.AddScoped<INeedsService, NeedsService>();
            services.AddScoped<IProcessingService, ProcessingService>();
            services.AddScoped<IVaccinationService, VaccinationService>();
            services.AddScoped<IIsNewService, IsNewService>();
            services.AddScoped<IArticleService, ArticleService>();
            services.AddScoped<ICurrentUserService, CurrentUserService>();
            services.AddScoped<IOrderService, OrderService>();
            services.AddScoped<IBookOrderService, BookOrderService>();
            services.AddScoped<IBookedTimeService, BookedTimeService>();
            services.AddScoped<IAdoptOrderService, AdoptOrderService>();
            services.AddScoped<IVideoService, VideoService>();
            services.AddScoped<IDescriptionService, DescriptionService>();
            services.AddScoped<IBreedService, BreedService>();
            services.AddScoped<IImageService, AnimalImageService>();
            services.AddScoped<IAdoptBookRequestService, AdoptBookRequestService>();
            services.AddScoped<IStatisticService<Animal>, StatisticService<Animal>>();
            services.AddScoped<IStatisticService<Article>, StatisticService<Article>>();
            services.AddScoped<IAnimalViewLocationService, AnimalViewLocationService>();
            services.AddScoped<IFilterService<Article, ArticleQuery>, ArticleFilterService>();
            services.AddScoped<IFilterService<Animal, AnimalQuery>, AnimalFilterService>();


            services.AddSingleton<IUriService>(provider =>
            {
                var accessor = provider.GetRequiredService<IHttpContextAccessor>();
                var request = accessor.HttpContext.Request;
                var absoluteUri = string.Concat(request.Scheme, "://", request.Host.ToUriComponent(), "/");
                absoluteUri += "api";
                return new UriService(absoluteUri);
            });
            services.AddSingleton(x => new BlobServiceClient(Configuration.GetValue<string>("AzureBlobStorageConnectionString")));
            services.AddSingleton<IBlobService, BlobService>();
            services.AddSingleton<IActionContextAccessor, ActionContextAccessor>();
            services.AddApplicationInsightsTelemetry();
            services.AddScoped<AnimalStatisticFilter>();
            services.AddScoped<ArticleStatisticFilter>();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, IServiceProvider provider)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();
            app.UseRouting();
            app.UseSwagger();
            app.UseSerilogRequestLogging();
            // Enable middleware to serve swagger-ui assets (HTML, JS, CSS etc.)
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "Test API V1");
            });

            app.UseCors(builder => builder
            .WithOrigins(Configuration["ApplicationSettings:Client_URL"], Configuration["ApplicationSettings:ClientDeploy_URL"])
            .AllowCredentials()
            .AllowAnyHeader()
            .AllowAnyMethod());

            app.UseMiddleware<TokenMiddleware>();      
            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });

            SeedUserPasswords(provider).Wait();
        }

        private async Task SeedUserPasswords(IServiceProvider provider)
        {
            var userManager = provider.GetRequiredService<UserManager<User>>();
            var users = new User[]
            {
                await userManager.FindByIdAsync("1"),
                await userManager.FindByIdAsync("2")
            };
            foreach (var user in users)
            {
                await AssignPassword(user, userManager);
            }
        }

        private async Task<IdentityResult> AssignPassword(User user, UserManager<User> manager)
        {
            if (user != null && user.PasswordHash == null)
            {
                return await manager.AddPasswordAsync(user, "Passwo99");
            }
            return null;
        }

    }
}
