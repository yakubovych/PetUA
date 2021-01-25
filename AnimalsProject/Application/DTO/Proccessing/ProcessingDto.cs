
using System;

namespace Application.DTO.Processing
{
    public class ProcessingDto
    {
        public ProcessingDto(Domain.Models.Processing proccessing, DateTime processingDate, DateTime nextProcessingDate)
        {
            Id = proccessing.Id;
            Type = proccessing.Type;
            ProcessingDate = processingDate;
            NextProcessingDate = nextProcessingDate;
        }
        public ProcessingDto(){}
        public long Id { get; set; }
        public string Type { get; set; }
        public bool IsRepeat { get; set; }
        public DateTime ProcessingDate { get; set; }
        public DateTime NextProcessingDate { get; set; }
        public override bool Equals(object obj)
        {
            return obj is ProcessingDto dto &&
                   Id == dto.Id;
        }

        public override int GetHashCode()
        {
            return Id.GetHashCode();
        }
    }
}
