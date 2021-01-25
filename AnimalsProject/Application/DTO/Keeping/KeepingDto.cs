
namespace Application.DTO.Keeping
{
    public class KeepingDto
    {
        public long Id { get; set; }
        public string Name { get; set; }

        public override bool Equals(object obj)
        {
            return obj is KeepingDto dto &&
                   Id == dto.Id;
        }

        public override int GetHashCode()
        {
            return Id.GetHashCode();
        }
    }
}
