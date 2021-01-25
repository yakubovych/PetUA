using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class FoodConfiguration : IEntityTypeConfiguration<Food>
    {
        public void Configure(EntityTypeBuilder<Food> builder)
        {
            builder.Property(fd => fd.Id).ValueGeneratedOnAdd();
            builder.Property(fd => fd.Name).IsRequired().HasMaxLength(200);

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<Food> builder)
        {
            builder.HasData(
                    new Food
                    {
                        Id = 1,
                        Name = "Premium feed"
                    },
                    new Food
                    {
                        Id = 2,
                        Name = "Medical feed"
                    },
                    new Food
                    {
                        Id = 3,
                        Name = "Natural feed"
                    }
                );
        }
    }
}
