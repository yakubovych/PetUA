using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class KeepingConfiguration : IEntityTypeConfiguration<Keeping>
    {
        public void Configure(EntityTypeBuilder<Keeping> builder)
        {
            builder.Property(kp => kp.Id).ValueGeneratedOnAdd();
            builder.Property(kp => kp.Name).IsRequired().HasMaxLength(200);

            DataSeedConfigure(builder);
        }

        public void DataSeedConfigure(EntityTypeBuilder<Keeping> builder)
        {
            builder.HasData(
                    new Keeping
                    {
                        Id = 1,
                        Name = "Flat"
                    },
                    new Keeping
                    {
                        Id = 2,
                        Name = "Enclosed house with yard"
                    },
                    new Keeping
                    {
                        Id = 3,
                        Name = "Wintering only in the house"
                    }
                );
        }
    }
}
