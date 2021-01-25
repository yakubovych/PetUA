using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class TagConfiguration : IEntityTypeConfiguration<Tag>
    {
        public void Configure(EntityTypeBuilder<Tag> builder)
        {
            builder.Property(tag => tag.Id).ValueGeneratedOnAdd();
            builder.Property(tag => tag.Name).IsRequired();

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<Tag> builder)
        {
            builder.HasData(
                new Tag
                {
                    Id = 1,
                    Name = "Vaccination"
                },
                new Tag
                {
                    Id = 2,
                    Name = "Keepings"
                },
                new Tag
                {
                    Id = 3,
                    Name = "Defects"
                },
                new Tag
                {
                    Id = 4,
                    Name = "Proccesing"
                },
                new Tag
                {
                    Id = 5,
                    Name = "AnimalHealth"
                }
                );
        }
    }
}