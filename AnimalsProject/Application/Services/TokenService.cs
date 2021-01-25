using Application.Common.Constants;
using Application.DTO.User;
using Application.Exceptions;
using Application.Interfaces;
using Domain.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Application.Services
{
    public class TokenService : ITokenService
    {
        private readonly UserManager<User> _userManager;

        private readonly IConfiguration _configuration;

        public TokenService(IConfiguration configuration, UserManager<User> userManager)
        {
            _userManager = userManager;
            _configuration = configuration;
        }

        public async Task<string> GenerateAccessToken(User user)
        {
            var roles = await _userManager.GetRolesAsync(user);
            var claims = new List<Claim>
            {
                new Claim(JwtRegisteredClaimNames.Sub, user.Email),
                new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
                new Claim(JwtRegisteredClaimNames.Iat, DateTime.Now.ToString()),
                new Claim(ClaimTypes.Name, user.Email)
            };

            foreach (var role in roles)
            {
                claims.Add(new Claim(ClaimTypes.Role, role));
            }
            var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["JwtAuth:JwtKey"]));
            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);
            var expire = DateTime.Now.AddMinutes(Convert.ToDouble(_configuration["JwtAuth:JwtExpireMinutes"]));
            var token = new JwtSecurityToken(
                _configuration["JwtAuth:JwtIssuer"],
                _configuration["JwtAuth:JwtIssuer"],
                claims,
                expires: expire,
                signingCredentials: creds
            );

            return new JwtSecurityTokenHandler().WriteToken(token);
        }

        public string GenerateRefreshToken()
        {
            var randomNumber = new byte[32];
            using (var generator = RandomNumberGenerator.Create())
            {
                generator.GetBytes(randomNumber);
                return Convert.ToBase64String(randomNumber);
            }
        }

        public async Task<User> GetUserFromExpiredToken(string token)
        {
            var tokenValidationParameters = new TokenValidationParameters
            {
                ValidateAudience = true,
                ValidAudience = _configuration["JwtAuth:JwtIssuer"],
                ValidateIssuer = true,
                ValidIssuer = _configuration["JwtAuth:JwtIssuer"],
                ValidateIssuerSigningKey = true,
                IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["JwtAuth:JwtKey"])),
                ValidateLifetime = false 
            };

            var tokenHandler = new JwtSecurityTokenHandler();
            
            var principal = tokenHandler.ValidateToken(token, tokenValidationParameters, out SecurityToken securityToken);
            
            var jwtSecurityToken = securityToken as JwtSecurityToken;

            if (jwtSecurityToken == null || !jwtSecurityToken.Header.Alg.Equals(SecurityAlgorithms.HmacSha256, StringComparison.InvariantCultureIgnoreCase))
                throw new SecurityTokenException(ExceptionStrings.InvalidAccessTokenException);

            var userEmail = principal.Identity.Name;
            var user =  await _userManager.FindByEmailAsync(userEmail.ToUpper());

            if (user == null)
                throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, userEmail);
            return user;
        }

        public async Task<UserTokenDto> RefreshToken(UserTokenDto userToken)
        {
            if (userToken == null)
                throw new ArgumentNullException(nameof(userToken), ExceptionStrings.NullArgumentException);

            var user = await GetUserFromExpiredToken(userToken.AccessToken);

            if (user.RefreshToken != userToken.RefreshToken)
                throw new SecurityTokenException(ExceptionStrings.InvalidRefreshTokenException);

            var newAccessToken = await GenerateAccessToken(user);
            var newRefreshToken = GenerateRefreshToken();

            user.RefreshToken = newRefreshToken;
            user.LastActive = DateTime.UtcNow;

            var updateResult = await _userManager.UpdateAsync(user);

            if (!updateResult.Succeeded)
                throw new ObjectUpdateException(ExceptionStrings.RefreshException, user.Email, newRefreshToken);

            return new UserTokenDto(){ AccessToken = newAccessToken, RefreshToken = newRefreshToken };
        }

        public async Task Revoke(string userEmail)
        {
            if (string.IsNullOrEmpty(userEmail))
                throw new ArgumentNullException(nameof(userEmail), ExceptionStrings.ObjectCreateException);

            var user = await _userManager.FindByEmailAsync(userEmail.ToUpper());

            if (user != null)
            {
                user.RefreshToken = null;
                var updateResult = await _userManager.UpdateAsync(user);
                if (!updateResult.Succeeded)
                    throw new ObjectUpdateException(ExceptionStrings.RevokeException, user.Email);
            }
            else
            {
                throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, userEmail);
            }
        }
    }
}
