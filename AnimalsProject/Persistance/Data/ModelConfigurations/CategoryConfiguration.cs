using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class CategoryConfiguration : IEntityTypeConfiguration<Category>
    {
        public void Configure(EntityTypeBuilder<Category> builder)
        {
            builder.Property(ct => ct.Id).ValueGeneratedOnAdd();
            builder.Property(ct => ct.Name).IsRequired().HasMaxLength(200);

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<Category> builder)
        {
            builder.HasData(
                    new Category
                    {
                        Id = 1,
                        Name = "Dog"
                    },
                    new Category
                    {
                        Id = 2,
                        Name = "Cat"
                    },
                    new Category
                    {
                        Id = 3,
                        Name = "Others"
                    }
                );
        }
    }  
}
