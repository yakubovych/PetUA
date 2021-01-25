using Application.DTO.Statistic;
using Application.ViewLocation;
using System;
using System.Collections.Generic;

namespace Application.DTO.Animal
{
    public class AnimalStatisticDto : StatisticDto
    {
        public AnimalStatisticDto()
        {
            ViewLocations = new List<AnimalViewLocationDto>();
        }
        public long Id { get; set; }
        public string Name { get; set; }
        public DateTime DateOfBirth { get; set; }
        public DateTime FoundDate { get; set; }
        public int Status { get; set; }
        public bool IsHidden { get; set; }
        public bool IsNew { get; set; }
        public IList<AnimalViewLocationDto> ViewLocations { get; set; }
    }
}
