using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class AddressConfiguration : IEntityTypeConfiguration<Address>
    {
        public void Configure(EntityTypeBuilder<Address> builder)
        {
            builder.Property(ad => ad.Name).IsRequired().HasMaxLength(200);
            builder.Property(ad => ad.Id).ValueGeneratedOnAdd();

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<Address> builder)
        {
            builder.HasData(
                new Address
                {
                    Id = 1,
                    Name = "Berlin"
                },
                new Address
                {
                    Id = 2,
                    Name = "Hamburg"
                },
                new Address
                {
                    Id = 3,
                    Name = "Munich"
                },
                new Address
                {
                    Id = 4,
                    Name = "Cologne"
                },
                new Address
                {
                    Id = 5,
                    Name = "Frankfurt"
                },
                new Address
                {
                    Id = 6,
                    Name = "Stuttgart"
                },
                new Address
                {
                    Id = 7,
                    Name = "Dusseldorf"
                },
                new Address
                {
                    Id = 8,
                    Name = "Dortmund"
                },
                new Address
                {
                    Id = 9,
                    Name = "Essen"
                },
                new Address
                {
                    Id = 10,
                    Name = "Leipzig"
                }
            );
        }
    }
}
