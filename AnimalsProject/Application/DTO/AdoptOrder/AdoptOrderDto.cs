using System;

namespace Application.DTO.AdoptOrder
{
    public class AdoptOrderDto
    {
        public long Id { get; set; }
        public long AnimalId { get; set; }
        public string UserId { get; set; }
        public string Status { get; set; }
        public string UserMotivation { get; set; }
        public string AdminComment { get; set; }
        public DateTime ClosingDate { get; set; }
        public DateTime EndingDate { get; set; }
    }
}
