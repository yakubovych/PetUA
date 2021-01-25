using Application.DTO.Help;
using Application.DTO.User;
using Application.Interfaces;
using AutoMapper;
using Persistance.Interfaces;
using Domain.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Application.Exceptions;
using Application.Common.Constants;
using System;

namespace Application.Services
{
    public class UserHelpService : IUserHelpService
    {
        private readonly IRepository<UserHelp> _userHelpRepo;

        private readonly UserManager<User> _userManager;

        private readonly IMapper _mapper;

        public UserHelpService(IMapper mapper, IRepository<UserHelp> userHelpRepo, UserManager<User> manager)
        {
            _userHelpRepo = userHelpRepo;
            _mapper = mapper;
            _userManager = manager;
        }

        public async Task Add(IEnumerable<UserHelpInDto> userHelp, string userEmail)
        {
            var userId = (await _userManager.FindByEmailAsync(userEmail.ToUpper()))?.Id;

            if (userId == null)
            {
                throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, userEmail);
            }

            var newUserHelpList = userHelp.Select(obj => new UserHelp()
            {
                UserId = userId,
                HelpId = obj.HelpId,
                Comment = obj.Comment
            }).ToHashSet();
                
            await _userHelpRepo.AddRangeAsync(newUserHelpList);
        }

        public async Task<UserHelpDto> GetHelpByUser(string userEmail)
        {
            var userHelpWithIncludedHelp = _userHelpRepo.Entities.Include(obj => obj.Help).AsNoTracking();

            var userId = (await _userManager.FindByEmailAsync(userEmail.ToUpper()))?.Id;

            if (userId == null)
            {
                throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, userEmail);
            }

            var userHelp = userHelpWithIncludedHelp.Where(prop => prop.UserId.Equals(userId)).Select(obj => new { obj.Help, obj.Comment });

            var otherComment = userHelp.FirstOrDefault(prop => prop.Help.KindOfHelp.Equals("Other"))?.Comment;

            var helpList = userHelp.Select(obj => _mapper.Map<HelpDto>(obj.Help)).ToList();

            return new UserHelpDto() { Help = helpList, Comment = otherComment };
        }

        public IEnumerable<UserHelpOutDto> GetUsersByHelp(int helpId)
        {
            if (helpId < 0)
            {
                throw new ArgumentException(ExceptionStrings.NegativeIntegerValueException, nameof(helpId));
            }
            var userHelpWithInclededUsers = _userHelpRepo.Entities.Include(obj => obj.User).AsNoTracking();

            return userHelpWithInclededUsers.Where(prop => prop.HelpId == helpId)
                                            .Select(obj => new UserHelpOutDto()
                                            {
                                                User = _mapper.Map<UserDto>(obj.User),
                                                Comment = obj.Comment
                                            }).ToList();

        }

        public async Task Update(IEnumerable<UserHelpInDto> userHelp, string userEmail)
        {
            var userId = (await _userManager.FindByEmailAsync(userEmail.ToUpper()))?.Id;

            if (userId == null)
            {
                throw new ObjectNotFoundException(ExceptionStrings.UserNotFoundException, userEmail);
            }

            var newUserHelp = userHelp.Select(obj => new UserHelp()
            {
                UserId = userId,
                HelpId = obj.HelpId,
                Comment = obj.Comment
            }).ToHashSet();

            var oldUserHelp = _userHelpRepo.Find(prop => prop.UserId.Equals(userId)).ToList();

            if (oldUserHelp != null &&  oldUserHelp.Count != 0)
            {
                await _userHelpRepo.RemoveRange(oldUserHelp);
            }

             await _userHelpRepo.AddRangeAsync(newUserHelp);        
        }
    }
}
