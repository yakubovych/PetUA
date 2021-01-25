using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class VaccinationConfiguration : IEntityTypeConfiguration<Vaccination>
    {
        public void Configure(EntityTypeBuilder<Vaccination> builder)
        {
            builder.Property(vc => vc.Id).ValueGeneratedOnAdd();
            builder.Property(vc => vc.Name).IsRequired().HasMaxLength(200);
            builder.Property(vc => vc.Type).IsRequired().HasMaxLength(200);

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<Vaccination> builder)
        {
            builder.HasData(
                   new Vaccination
                   {
                       Id = 1,
                       Type = "Common",
                       Name = "Daramoon"
                   },
                   new Vaccination
                   {
                       Id = 2,
                       Type = "Common",
                       Name = "Vangard"
                   },
                   new Vaccination
                   {
                       Id = 3,
                       Type = "Common",
                       Name = "Nobivak"
                   },
                   new Vaccination
                   {
                       Id = 4,
                       Type = "Rabies vaccine",
                       Name = "Rabisin"
                   },
                   new Vaccination
                   {
                       Id = 5,
                       Type = "Rabies vaccine",
                       Name = "Rabistar"
                   }
           );
        }
    }
}
