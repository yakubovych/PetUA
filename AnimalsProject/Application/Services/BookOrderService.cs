using Application.DTO.BookOrder;
using Application.Interfaces;
using AutoMapper;
using Domain.Enums;
using Persistance.Interfaces;
using Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Application.Exceptions;

namespace Application.Services
{
    public class BookOrderService : IBookOrderService
    {
        private readonly IRepository<BookOrder> _bookOrderRepository;
        private readonly IRepository<Animal> _animalRepository;
        private readonly IBookedTimeService _bookedTimeService;
        private readonly ICurrentUserService _currentUserService;

        private readonly IMapper _mapper;

        public BookOrderService(IRepository<BookOrder> bookOrderRepository,
                                IRepository<Animal> animalRepository,
                                IBookedTimeService bookedTimeService,
                                ICurrentUserService currentUserService,
                                IMapper mapper)
        {
            _bookOrderRepository = bookOrderRepository;
            _animalRepository = animalRepository;
            _bookedTimeService = bookedTimeService;
            _currentUserService = currentUserService;
            _mapper = mapper;
        }
        public async Task ApproveBookOrder(BookOrderForApproveDto order)
        {
            var bookOrder = _bookOrderRepository.Entities.FirstOrDefault(x => x.Id == order.Id);
            var animal = _animalRepository.Entities.FirstOrDefault(x => x.Id == bookOrder.AnimalId);
            if (AnimalStatus.None != animal.Status)
            {
                throw new ObjectException("Animal is booked or adopted");
            }
            if (bookOrder == null)
            {
                throw new ObjectNotFoundException("Book order not found");
            }
            if (OrderStatus.Pending != bookOrder.Status)
            {
                throw new ObjectException("Book order was declined ot booktime was up");
            }
            animal.Status = AnimalStatus.Booked;
            _animalRepository.Update(animal);
            _mapper.Map(order, bookOrder);

            bookOrder.Status = OrderStatus.Approved;
            bookOrder.ClosingDate = new DateTime();
            _bookOrderRepository.Update(bookOrder);
            await _bookOrderRepository.SaveAsync();
        }

        public async Task DeclineBookOrder(BookOrderForDeclineDto order)
        {
            var bookOrder = _bookOrderRepository.Entities.FirstOrDefault(x => x.Id == order.Id);
            var animal = _animalRepository.Entities.FirstOrDefault(x => x.Id == bookOrder.AnimalId);
            if (OrderStatus.Declined == bookOrder.Status)
            {
                throw new ObjectException(nameof(bookOrder.AnimalId), "animal is declined already");
            }

            if (bookOrder == null || bookOrder.Status == OrderStatus.Declined)
            {
                throw new ObjectNotFoundException("Threre isn't book order or it's declined already");
            }

            animal.Status = AnimalStatus.None;
            _animalRepository.Update(animal);

            _mapper.Map(order, bookOrder);
            bookOrder.Status = OrderStatus.Declined;
            bookOrder.ClosingDate = DateTime.Now;
            _bookOrderRepository.Update(bookOrder);
            await _bookOrderRepository.SaveAsync();
        }

        public async Task<IEnumerable<BookOrderDto>> GetAllBookOrders()
        {
            await _bookedTimeService.UpdateBookedTime(_bookOrderRepository.Find(x => x.Status == OrderStatus.Approved).ToList());
            var bookOrders =  _bookOrderRepository.GetAllQueryable();
            var bookOrdersResult = bookOrders.Select(x => _mapper.Map<BookOrderDto>(x));
            return bookOrdersResult;
        }
        public async Task<IEnumerable<BookOrderDto>> GetAllApprovedBookOrders()
        {
            await _bookedTimeService.UpdateBookedTime(_bookOrderRepository.Find(x => x.Status == OrderStatus.Approved).ToList());
            var bookOrders = _bookOrderRepository.GetAllQueryable().Where(x => x.Status == OrderStatus.Approved).Select(x => _mapper.Map<BookOrderDto>(x));
            return bookOrders;

        }

        public IEnumerable<BookOrderDto> GetAllPendingBookOrders()
        {

            var bookOrders = _bookOrderRepository.GetAllQueryable().Where(x => x.Status == OrderStatus.Pending).Select(x => _mapper.Map<BookOrderDto>(x));
            return bookOrders;
        }
        public IEnumerable<BookOrderDto> GetAllBookOrdersByUserId(string id)
        {
            var bookOrders = _bookOrderRepository.GetAllQueryable().Where(x => x.UserId == id).Select(x => _mapper.Map<BookOrderDto>(x));
            return bookOrders;
        }
        public IEnumerable<BookOrderDto> GetAllBookOrdersOfCurrentUser()
        {
            var userEmail = _currentUserService.UserEmail;
            var bookOrders = _bookOrderRepository.GetAllQueryable().Where(x => x.CreatedBy == userEmail).Select(x => _mapper.Map<BookOrderDto>(x));
            return bookOrders;
        }
        public async Task<BookOrderDto> GetById(long id)
        {
            var bookOrder = await _bookOrderRepository.GetByIdAsync(id);
            var bookOrderResult = _mapper.Map<BookOrderDto>(bookOrder);
            return bookOrderResult;
        }
        public async Task Delete(long id)
        {
            var adoptOrder = await _bookOrderRepository.GetByIdAsync(id);
            if (adoptOrder == null)
            {
                throw new ArgumentNullException(nameof(id), "bookOrder not found");
            }
            await _bookOrderRepository.Remove(adoptOrder);
        }
    }
}
