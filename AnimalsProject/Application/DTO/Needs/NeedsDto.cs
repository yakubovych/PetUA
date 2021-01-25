
namespace Application.DTO.Needs
{
    public class NeedsDto
    {
        public long Id { get; set; }
        public string Name { get; set; }

        public override bool Equals(object obj)
        {
            return obj is NeedsDto dto &&
                   Id == dto.Id;
        }

        public override int GetHashCode()
        {
            return Id.GetHashCode();
        }
    }
}
