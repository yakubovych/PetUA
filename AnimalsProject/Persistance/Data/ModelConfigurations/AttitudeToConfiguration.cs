using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    class AttitudeToConfiguration : IEntityTypeConfiguration<AttitudeTo>
    {
        public void Configure(EntityTypeBuilder<AttitudeTo> builder)
        {
            builder.Property(att => att.Id).ValueGeneratedOnAdd();
            builder.Property(att => att.Name).IsRequired().HasMaxLength(250);

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<AttitudeTo> builder)
        {
            builder.HasData(
                    new AttitudeTo
                    {
                        Id = 1,
                        Name = "Childrens"
                    },
                    new AttitudeTo
                    {
                        Id = 2,
                        Name = "Cats"
                    },
                    new AttitudeTo
                    {
                        Id = 3,
                        Name = "Dogs"
                    }
                );
        }
    }
}
