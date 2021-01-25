namespace Application.DTO.Breed
{
    public class BreedDto
    {
        public long Id { get; set; }
        public string LanguageUa { get; set; }
        public string LanguageEn { get; set; }
        public override bool Equals(object obj)
        {
            return obj is BreedDto dto &&
                   Id == dto.Id;
        }
        public override int GetHashCode()
        {
            return Id.GetHashCode();
        }
    }
}
