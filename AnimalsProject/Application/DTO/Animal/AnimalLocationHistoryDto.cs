using Application.DTO.Address;
using System;

namespace Application.DTO.Animal
{
    public class AnimalLocationHistoryDto
    {
        public AddressDto Address { get; set; }

        public DateTime Date { get; set; }
    }
}
