using System;

namespace Application.DTO.BookOrder
{
    public class BookOrderDto
    {
        public long Id { get; set; }
        public long AnimalId { get; set; }
        public string UserEmail { get; set; }
        public string Status { get; set; }
        public string UserMotivation { get; set; }
        public string AdminComment { get; set; }
        public DateTime EndingDate { get; set; }
    }
}
