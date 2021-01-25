using Application.Interfaces;
using Persistance.Interfaces;
using Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Services
{
    public class BookedTimeService : IBookedTimeService
    {
        private readonly IRepository<BookOrder> _bookOrderRepository;
        private readonly IRepository<Animal> _animalRepository;

        public BookedTimeService(IRepository<BookOrder> bookOrderRepository, IRepository<Animal> animalRepository)
        {
            _bookOrderRepository = bookOrderRepository;
            _animalRepository = animalRepository;
        }

        public async Task UpdateBookedTime(IEnumerable<BookOrder> bookOrders)
        {

            foreach (var order in bookOrders)
            {
                if (order.EndingDate < DateTime.Now)
                {
                    var animal = await _animalRepository.GetByIdAsync(order.AnimalId);
                    animal.Status = Domain.Enums.AnimalStatus.None;
                    order.Status = Domain.Enums.OrderStatus.Declined;
                    _animalRepository.Update(animal);
                    _bookOrderRepository.Update(order);
                }
            }
            await _animalRepository.SaveAsync();
            await _bookOrderRepository.SaveAsync();
        }
        public async Task UpdateBookedTime(BookOrder bookOrder)
        {
            if (bookOrder.EndingDate < DateTime.Now)
            {
                var animal = _animalRepository.Entities.FirstOrDefault(x => x.Id == bookOrder.AnimalId);
                animal.Status = Domain.Enums.AnimalStatus.None;
                bookOrder.Status = Domain.Enums.OrderStatus.Declined;
                _animalRepository.Update(animal);
                _bookOrderRepository.Update(bookOrder);
                await _animalRepository.SaveAsync();
                await _bookOrderRepository.SaveAsync();
            }

        }

    }
}
