using Domain.Models;

namespace Application.DTO.VaccinationDtos
{
    public class VaccinationForCreationDto
    {
        public VaccinationForCreationDto(Vaccination vac)
        {
            Name = vac.Name;
            Type = vac.Type;
        }
        public VaccinationForCreationDto() { }
        public string Name { get; set; }
        public string Type { get; set; }
    }
}
