using Application.DTO.Animal;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Domain.Enums;
using System;

namespace Application.Services
{
    public partial class AnimalService
    {
        public async Task<IEnumerable<AnimalBookingTimeDto>> GetAnimalsBookingTime()
        {
            var bookedAnimals = _repository.GetAllQueryable()
                                           .Where(animal => animal.Status == AnimalStatus.Booked)
                                           .Include(animal => animal.Address)
                                           .Include(animal => animal.Images)
                                           .Include(animal => animal.BookOrders);

            var bookedAnimalsList = new List<AnimalBookingTimeDto>();

            if (bookedAnimals.ToList().Count == 0)
                return bookedAnimalsList;

            foreach (var animal in bookedAnimals)
            {
                var animalBookTimeEndingDate = animal.BookOrders?.FirstOrDefault(order => order.Status == OrderStatus.Approved)?.EndingDate;

                if (animalBookTimeEndingDate == null)
                    continue;

                var bookingTimeMinutesRemaining = animalBookTimeEndingDate.Value.Subtract(DateTime.Now).TotalMinutes;

                bookedAnimalsList.Add(new AnimalBookingTimeDto
                {
                    Animal = _mapper.Map<AnimalDto>(animal),
                    MinutesRemaining = bookingTimeMinutesRemaining
                });

                if (bookingTimeMinutesRemaining <= 0.0)
                {
                    animal.Status = AnimalStatus.None;
                }
            }

            await _repository.SaveAsync();

            return bookedAnimalsList;
        }
    }
}
