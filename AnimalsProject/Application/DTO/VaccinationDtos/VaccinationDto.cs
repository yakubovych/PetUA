using Domain.Models;

namespace Application.DTO.VaccinationDtos
{
    public class VaccinationDto
    {
        public VaccinationDto(Vaccination vac)
        {
            Id = vac.Id;
            Name = vac.Name;
            Type = vac.Type;
        }
        public VaccinationDto() { }
        public long Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public override bool Equals(object obj)
        {
            return obj is VaccinationDto dto &&
                   Id == dto.Id;
        }

        public override int GetHashCode()
        {
            return Id.GetHashCode();
        }
    }
}
