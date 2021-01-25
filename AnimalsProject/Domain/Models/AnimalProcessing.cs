using Domain.Common;
using System;
using System.ComponentModel.DataAnnotations;

namespace Domain.Models
{
    public class AnimalProcessing : AnimalBase
    {
        public long AnimalId { get; set; }
        public Animal Animal { get; set; }
        public long ProcessingId { get; set; }
        public Processing Processing { get; set; }
        public bool IsRepeat { get; set; }
        [DataType(DataType.Date)]
        public DateTime ProcessingDate { get; set; }
        [DataType(DataType.Date)]
        public DateTime NextProcessingDate { get; set; }
        public override bool Equals(object obj)
        {
            return obj is AnimalProcessing dto &&
                   AnimalId == dto.AnimalId &&
                   ProcessingId == dto.ProcessingId && 
                   NextProcessingDate == dto.NextProcessingDate;
        }

        public override int GetHashCode()
        {
            return HashCode.Combine(AnimalId, ProcessingId, NextProcessingDate);
        }
    }
}
