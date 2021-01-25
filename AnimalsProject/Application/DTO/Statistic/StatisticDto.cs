
using System;

namespace Application.DTO.Statistic
{
    public abstract class StatisticDto
    {
        public int ViewCount { get; set; }
        public DateTime Created { get; set; }
    }
}
