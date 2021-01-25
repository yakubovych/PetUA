namespace Application.DTO.Defect
{
    public class DefectDto
    {
        public long Id { get; set; }
        public string Type { get; set; }

        public override bool Equals(object obj)
        {
            return obj is DefectDto dto &&
                   Id == dto.Id;
        }

        public override int GetHashCode()
        {
            return Id.GetHashCode();
        }
    }
}
