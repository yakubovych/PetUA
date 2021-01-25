using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class AnimalVideoConfiguration : IEntityTypeConfiguration<AnimalVideo>
    {
        public void Configure(EntityTypeBuilder<AnimalVideo> builder)
        {
            builder.Property(ad => ad.FileName).IsRequired();
        }

    }
}
