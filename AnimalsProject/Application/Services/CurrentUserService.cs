using Persistance.Interfaces;
using Microsoft.AspNetCore.Http;
using System.Security.Claims;

namespace Application.Services
{
    public class CurrentUserService : ICurrentUserService
    {
        public CurrentUserService(IHttpContextAccessor httpContextAccessor)
        {
            UserEmail = httpContextAccessor.HttpContext?.User.Identity.Name;
        }

        public string UserEmail { get; }
    }
}