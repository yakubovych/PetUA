using System;
using Application.DTO.Order;
using AutoMapper;
using Persistance.Interfaces;
using Domain.Models;
using Application.Interfaces;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Domain.Enums;
using Application.Exceptions;

namespace Application.Services
{
    public class OrderService : IOrderService
    {
        private readonly IMapper _mapper;
        private readonly IRepository<AdoptOrder> _adopt;
        private readonly IRepository<BookOrder> _book;
        private readonly IRepository<Animal> _animal;
        private readonly ICurrentUserService _user;
        private readonly UserManager<User> _userManager;


        public OrderService(IMapper mapper,
                            IRepository<AdoptOrder> adopt,
                            IRepository<BookOrder> book,
                            IRepository<Animal> animal,
                            ICurrentUserService user,
                            UserManager<User> userManager)
        {
            _mapper = mapper;
            _adopt = adopt;
            _book = book;
            _animal = animal;
            _user = user;
            _userManager = userManager;
        }

        public async Task CreateAdoptOrder(OrderForCreationDto order)
        {

            var animal = _animal.Entities.FirstOrDefault(x => x.Id == order.AnimalId);
            if (AnimalStatus.None != animal.Status)
            {
                throw new ObjectException(nameof(order.AnimalId), "animal is booked or adopted");
            }

            var model = new AdoptOrder();
            _mapper.Map(order, model);
            var currentUser = await _userManager.FindByEmailAsync(_user.UserEmail);
            model.UserId = currentUser.Id;
            model.ClosingDate = new DateTime();
            await _adopt.AddAsync(model);
        }

        public async Task CreateBookOrder(OrderForCreationDto order)
        {

            var animal = _animal.Entities.FirstOrDefault(x => x.Id == order.AnimalId);
            if (AnimalStatus.None != animal.Status)
            {
                throw new ObjectException(nameof(order.AnimalId), "animal is booked or adopted");
            }

            var model = new BookOrder();
            _mapper.Map(order, model);
            var currentUser  = await _userManager.FindByEmailAsync(_user.UserEmail);
            model.UserId = currentUser.Id;
            model.ClosingDate = new DateTime();
            model.EndingDate = new DateTime();

            await _book.AddAsync(model);
        }
    }
}
