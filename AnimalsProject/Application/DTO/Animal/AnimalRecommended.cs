using System.Collections.Generic;

namespace Application.DTO.Animal
{
    public class AnimalRecommended
    {
        public AnimalIncludeValuesDto mainAnimal { get; set; }
        public IEnumerable<AnimalDto> recommendedAnimals { get; set; }
    }
}
