using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Application.DTO.AdoptBookRequest;
using Application.Interfaces;
using AutoMapper;
using Persistance.Interfaces;
using Domain.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Domain.Enums;
using System;
using Application.Common.Interfaces;

namespace Application.Services
{
    public class AdoptBookRequestService : IAdoptBookRequestService
    {
        private readonly ICurrentUserService _currentUserService;
        private readonly IRepository<AdoptOrder> _adoptOrderRepository;
        private readonly IRepository<BookOrder> _bookOrderRepository;
        private readonly IAdoptOrderService _adoptOrderService;
        private readonly IBookOrderService _bookOrderService;
        private readonly UserManager<User> _userManager;
        private readonly IMapper _mapper;
        private readonly IEmailHelper _emailHelper;

        public AdoptBookRequestService(ICurrentUserService currentUserService,
                                       IRepository<AdoptOrder> adoptOrderRepository,
                                       IRepository<BookOrder> bookOrderRepository,
                                       UserManager<User> userManager,
                                       IMapper mapper,
                                       IAdoptOrderService adoptOrderService,
                                       IBookOrderService bookOrderService,
                                       IEmailHelper emailHelper)
        {
            _currentUserService = currentUserService;
            _adoptOrderRepository = adoptOrderRepository;
            _bookOrderRepository = bookOrderRepository;
            _userManager = userManager;
            _mapper = mapper;
            _adoptOrderService = adoptOrderService;
            _bookOrderService = bookOrderService;
            _emailHelper = emailHelper;
        }
        public async Task<IEnumerable<AdoptBookRequest>> GetAllAdoptBookRequestAsync()
        {
            var currentUser = _currentUserService.UserEmail;
            var user = await _userManager.FindByEmailAsync(currentUser);

            var adoptBookRequestsList = new List<AdoptBookRequest>();

            var adoptOrders = await _adoptOrderRepository.GetAllQueryable()
                                                  .Where(a => a.UserId == user.Id)
                                                  .Include(an => an.Animal)
                                                  .ToListAsync();
            adoptBookRequestsList.AddRange(adoptOrders.Select(x => _mapper.Map<AdoptBookRequest>(x)));

            var bookOrders = await _bookOrderRepository.GetAllQueryable()
                                                  .Where(a => a.UserId == user.Id)
                                                  .Include(an => an.Animal)
                                                  .ToListAsync();
            adoptBookRequestsList.AddRange(bookOrders.Select(x => _mapper.Map<AdoptBookRequest>(x)));
            return adoptBookRequestsList;
        }
        public async Task DeleteAdoptBookRequest(AdoptBookRequestForDelete adoptBookRequest)
        {
            var currentUser = _currentUserService.UserEmail;
            var user = await _userManager.FindByEmailAsync(currentUser);
       
            string type = "";
            if (adoptBookRequest.Type == "Book")
            {
                type = "Book";
                var bookOrder = await _bookOrderRepository.GetByIdAsync(adoptBookRequest.Id);
                if( bookOrder.Status != OrderStatus.Pending)
                {
                    throw new ArgumentException("Order is diclined or approved");
                }
                if( bookOrder.UserId != user.Id)
                {
                    throw new ArgumentException("You can not delete this order");
                }
                await _bookOrderService.Delete(adoptBookRequest.Id);
            }
            if (adoptBookRequest.Type == "Adopt")
            {
                type = "Adopt";
                var adoptOrder = await _adoptOrderRepository.GetByIdAsync(adoptBookRequest.Id);
                if (adoptOrder.Status != OrderStatus.Pending)
                {
                    throw new ArgumentException("Order is diclined or approved");
                }
                if (adoptOrder.UserId != user.Id)
                {
                    throw new ArgumentException("You can not delete this order");
                }
                await _adoptOrderService.Delete(adoptBookRequest.Id);
            }

            var admins = await _userManager.GetUsersInRoleAsync("SuperAdmin");
            foreach (var admin in admins)
            {
                await _emailHelper.GetDataAndSendAsync(admin.Email, "DeleteAdoptBookRequestTemplate", "DeleteAdoptBookRequestSubject", $"{user.Email}", type, "link");
            }
        }
        public async Task<IEnumerable<AdoptBookRequest>> GetAllAdoptBookDeclinedRequestAsync(string userEmail)
        {
            var currentUser = userEmail;
            var user = await _userManager.FindByEmailAsync(currentUser);

            var adoptBookRequestsList = new List<AdoptBookRequest>();

            var adoptOrders = await _adoptOrderRepository.GetAllQueryable()
                                                  .Where(a => a.UserId == user.Id && a.Status == OrderStatus.Declined)
                                                  .Include(an => an.Animal)
                                                  .ToListAsync();
            adoptBookRequestsList.AddRange(adoptOrders.Select(x => _mapper.Map<AdoptBookRequest>(x)));

            var bookOrders = await _bookOrderRepository.GetAllQueryable()
                                                  .Where(a => a.UserId == user.Id && a.Status == OrderStatus.Declined)
                                                  .Include(an => an.Animal)
                                                  .ToListAsync();
            adoptBookRequestsList.AddRange(bookOrders.Select(x => _mapper.Map<AdoptBookRequest>(x)));
            return adoptBookRequestsList;
        }
    }
}
