using Application.Common.Constants;
using Application.DTO.User;
using Application.Exceptions;
using Application.Interfaces;
using Application.Validators;
using AutoMapper;
using Domain.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Persistance.Extension;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Services
{
    public class MainAdminService : IMainAdminService
    {
        private readonly UserManager<User> _userManager;
        private readonly IMapper _mapper;
        public MainAdminService(UserManager<User> userManager, IMapper mapper)
        {
            _userManager = userManager;
            _mapper = mapper;
        }

        public async Task DeleteUser(string id)
        {
            StringArgumentValidator.IsNullOrEmpty(id, nameof(id));

            var admin = await _userManager.FindByIdAsync(id);

            if (admin == null)
                throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, id);

            var deleteAdminResult = await _userManager.DeleteAsync(admin);

            if (!deleteAdminResult.Succeeded)
                    throw new ObjectDeleteException(ExceptionStrings.UserDeleteException, id);
        }

        public IEnumerable<UserIncludeValuesDto> GetUsers()
        {
            var users = GetUsersWithIncludes();
            
            var usersResult = users.Select(u => _mapper.Map<UserIncludeValuesDto>(u));
            return usersResult.AsEnumerable();
        }

        public async Task<IEnumerable<UserIncludeValuesDto>> GetUsersInRole(string role)
        {
            StringArgumentValidator.IsNullOrEmpty(role, nameof(role));

            var formatedRole = role.ToLowerCaseWithFirstLetterInUpper();

            if (!Roles.RoleStrings.Contains(formatedRole))
                throw new RoleException(ExceptionStrings.RoleNotFoundException, formatedRole);

            var usersInRole = await _userManager.GetUsersInRoleAsync(formatedRole);

            var users = GetUsersWithIncludes().AsEnumerable()
                                              .Where(user => usersInRole.Contains(user))
                                              .Select(prop => _mapper.Map<UserIncludeValuesDto>(prop));
                                              
            return users;
        }

        public IEnumerable<UserIncludeValuesDto> GetUsersByName(string name)
        {
            StringArgumentValidator.IsNullOrEmpty(name, nameof(name));

            return GetUsersWithIncludes().Where(user => user.FullName.ToLower().Contains(name.ToLower()))
                                         .Select(prop => _mapper.Map<UserIncludeValuesDto>(prop))
                                         .AsEnumerable();
        }
        
        public IEnumerable<UserIncludeValuesDto> GetUsersByLocation(long locationId)
        {
            if (locationId < 0)
                throw new ArgumentException(ExceptionStrings.NegativeIntegerValueException, nameof(locationId));

            return GetUsersWithIncludes().Where(user => user.AddressId == locationId)
                                         .Select(prop => _mapper.Map<UserIncludeValuesDto>(prop))
                                         .AsEnumerable();
        }

        public UserIncludeValuesDto GetUserByEmail(string email)
        {
            StringArgumentValidator.IsNullOrEmpty(email, nameof(email));

            var userWithSpecifiedEmail = GetUsersWithIncludes().FirstOrDefault(user => user.Email.ToLower().Equals(email.ToLower()));

            if (userWithSpecifiedEmail == null)
                throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, email);

            return _mapper.Map<UserIncludeValuesDto>(userWithSpecifiedEmail);
        }
        
        public UserIncludeValuesDto GetUserByPhoneNumber(string phoneNumber)
        {
            StringArgumentValidator.IsNullOrEmpty(phoneNumber, nameof(phoneNumber));

            var userWithSpecifiedPhoneNumber = GetUsersWithIncludes().FirstOrDefault(user => user.PhoneNumber.Equals(phoneNumber));

            if (userWithSpecifiedPhoneNumber == null)
                throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, phoneNumber);

            return _mapper.Map<UserIncludeValuesDto>(userWithSpecifiedPhoneNumber);
        }

        private IQueryable<User> GetUsersWithIncludes()
        {
            return _userManager.Users.Include(u => u.Address)
                .Include(u => u.UserHelps).ThenInclude(u => u.Help)
                .Include(u => u.AdoptOrders).ThenInclude(u => u.Animal)
                .Include(u => u.BookOrders).ThenInclude(u => u.Animal)
                .Include(u => u.Articles).ThenInclude(u => u.ArticleTags).ThenInclude(u => u.Tag)
                .Include(u => u.Articles).ThenInclude(u => u.Images)
                .AsNoTracking();
        }
    }
}
