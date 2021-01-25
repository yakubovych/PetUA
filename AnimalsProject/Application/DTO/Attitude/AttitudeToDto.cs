using Domain.Models;

namespace Application.DTO.Attitude
{
    public class AttitudeToDto
    {
        public AttitudeToDto(AttitudeTo attitudeTo, int mark)
        {
            Id = attitudeTo.Id;
            Name = attitudeTo.Name;
            Mark = mark;
        }
        public AttitudeToDto(){}
        public long Id { get; set; }
        public string Name { get; set; }
        public int Mark { get; set; }
        public override int GetHashCode()
        {
            return Id.GetHashCode();
        }

        public override bool Equals(object obj)
        {
            return obj is AttitudeToDto dto &&
                   Id == dto.Id;
        }
    }
}
