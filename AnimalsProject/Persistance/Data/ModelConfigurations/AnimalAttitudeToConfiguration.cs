using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class AnimalAttitudeToConfiguration : IEntityTypeConfiguration<AnimalAttitudeTo>
    {
        public void Configure(EntityTypeBuilder<AnimalAttitudeTo> builder)
        {
            builder.HasKey(at => new { at.AnimalId, at.AttitudeId });
            
            builder.HasOne(a => a.Animal)
                .WithMany(at => at.AnimalAttitudes)
                .HasForeignKey(a => a.AnimalId);
            
            builder.HasOne(at => at.AttitudeTo)
                .WithMany(a => a.AnimalAttitudes)
                .HasForeignKey(at => at.AttitudeId);

            builder.Property(att => att.AnimalId).IsRequired();
            builder.Property(att => att.AttitudeId).IsRequired();

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<AnimalAttitudeTo> builder)
        {
            builder.HasData(
                   new AnimalAttitudeTo
                   {
                       AnimalId = 4,
                       AttitudeId = 1,
                       Mark = 3
                   },
                   new AnimalAttitudeTo
                   {
                       AnimalId = 2,
                       AttitudeId = 2,
                       Mark = 3
                   },
                   new AnimalAttitudeTo
                   {
                       AnimalId = 12,
                       AttitudeId = 1,
                       Mark = 3
                   },
                   new AnimalAttitudeTo
                   {
                       AnimalId = 11,
                       AttitudeId = 2,
                       Mark = 2
                   },
                   new AnimalAttitudeTo
                   {
                       AnimalId = 11,
                       AttitudeId = 1,
                       Mark = 5
                   },
                   new AnimalAttitudeTo
                   {
                       AnimalId = 11,
                       AttitudeId = 3,
                       Mark = 4
                   }
               );
        }
    }
}
