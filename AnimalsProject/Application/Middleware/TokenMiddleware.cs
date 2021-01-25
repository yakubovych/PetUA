using Application.DTO.User;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using System.Threading.Tasks;

namespace Application.Middleware
{
    public class TokenMiddleware
    {
        private readonly RequestDelegate _next;

        public TokenMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext context, IConfiguration configuration)
        {
            var cookieValue = context.Request.Cookies?[configuration["TokenCookieName"]];
            if (!string.IsNullOrEmpty(cookieValue))
            {
                UserTokenDto deserializedTokens = JsonConvert.DeserializeObject<UserTokenDto>(cookieValue);
                context.Request.Headers.Add("Authorization", "Bearer " + deserializedTokens.AccessToken);
            }
            await _next.Invoke(context);
        }
    }
}
