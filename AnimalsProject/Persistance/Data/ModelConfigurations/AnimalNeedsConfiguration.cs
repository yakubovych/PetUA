using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class AnimalNeedsConfiguration : IEntityTypeConfiguration<AnimalNeeds>
    {
        public void Configure(EntityTypeBuilder<AnimalNeeds> builder)
        {
            builder.HasKey(at => new { at.AnimalId, at.NeedsId });
            
            builder.HasOne(a => a.Animal)
                .WithMany(at => at.AnimalNeeds)
                .HasForeignKey(a => a.AnimalId);
            
            builder.HasOne(at => at.Needs)
                .WithMany(a => a.AnimalNeeds)
                .HasForeignKey(at => at.NeedsId);

            builder.Property(an => an.AnimalId).IsRequired(); 
            builder.Property(an => an.NeedsId).IsRequired();

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<AnimalNeeds> builder)
        {
            builder.HasData(
                  new AnimalNeeds
                  {
                      AnimalId = 2,
                      NeedsId = 3
                  },
                  new AnimalNeeds
                  {
                      AnimalId = 2,
                      NeedsId = 2
                  },
                  new AnimalNeeds
                  {
                      AnimalId = 3,
                      NeedsId = 1
                  },
                  new AnimalNeeds
                  {
                      AnimalId = 7,
                      NeedsId = 3
                  },
                  new AnimalNeeds
                  {
                      AnimalId = 8,
                      NeedsId = 2
                  },
                  new AnimalNeeds
                  {
                      AnimalId = 14,
                      NeedsId = 1
                  }
              );
        }
    }
}
