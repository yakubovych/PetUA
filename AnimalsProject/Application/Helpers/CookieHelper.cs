using Application.DTO.User;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using System;

namespace Application.Helpers
{
    public static class CookieHelper
    {
        public static void CreateCookie(IConfiguration configuration, HttpResponse response, bool isPersistent, UserTokenDto userToken)
        {
            CleanCookies(configuration, response);
            var CookieOptions = new CookieOptions() { HttpOnly = true, Secure = false, IsEssential = true };
            if (isPersistent)
            {
                CookieOptions.MaxAge = TimeSpan.FromDays(Convert.ToDouble(configuration["CookieExpireDays"]));
                response.Cookies.Append(configuration["TokenCookieName"], JsonConvert.SerializeObject(userToken), CookieOptions);
                response.Cookies.Append(configuration["IsPersistentCookieName"], "true");
            }
            else
            {
                response.Cookies.Append(configuration["TokenCookieName"], JsonConvert.SerializeObject(userToken), CookieOptions);
            }
        }

        public static void RefreshCookie(IConfiguration configuration, HttpRequest request, HttpResponse response, UserTokenDto userToken)
        {
            var isPersistent = request.Cookies.ContainsKey(configuration["IsPersistentCookieName"]);
            CreateCookie(configuration, response, isPersistent, userToken);
        }

        public static UserTokenDto GetTokenValue(IConfiguration configuration, HttpRequest request)
        {
            var cookieValue = request.Cookies[configuration["TokenCookieName"]];
            if (!string.IsNullOrEmpty(cookieValue))
            {
                return JsonConvert.DeserializeObject<UserTokenDto>(cookieValue);
            }
            return null;
        }

        public static void CleanCookies(IConfiguration configuration, HttpResponse response)
        {
            response.Cookies.Delete(configuration["IsPersistentCookieName"]);
            response.Cookies.Delete(configuration["TokenCookieName"]);
            response.Cookies.Delete(configuration["IdentityCookieName"]);
        }
    }
}
