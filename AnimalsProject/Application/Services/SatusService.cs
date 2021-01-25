using Application.Interfaces;
using Domain.Enums;
using System;

namespace Application.Services
{
    public class StatusService : IStatusService
    {
    
        public StatusService(){}

        public Array GetAllAnimalStatuses()
        {
            var animalStatuses = Enum.GetNames(typeof(AnimalStatus));
            return animalStatuses;
        }

        public Array GetAllOrderStatuses()
        {
            var orderStatuses = Enum.GetNames(typeof(OrderStatus));
            return orderStatuses;
        }

    }
}