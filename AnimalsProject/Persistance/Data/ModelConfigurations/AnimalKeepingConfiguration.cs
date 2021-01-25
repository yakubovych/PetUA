using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class AnimalKeepingConfiguration : IEntityTypeConfiguration<AnimalKeeping>
    {
        public void Configure(EntityTypeBuilder<AnimalKeeping> builder)
        {
            builder.HasKey(at => new { at.AnimalId, at.KeepingId });

            builder.HasOne(a => a.Animal)
                .WithMany(at => at.AnimalKeepings)
                .HasForeignKey(a => a.AnimalId);

            builder.HasOne(at => at.Keeping)
                .WithMany(a => a.AnimalKeepings)
                .HasForeignKey(at => at.KeepingId);

            builder.Property(anKeep => anKeep.AnimalId).IsRequired();
            builder.Property(anKeep => anKeep.KeepingId).IsRequired();

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<AnimalKeeping> builder)
        {
            builder.HasData(
                  new AnimalKeeping
                  {
                      AnimalId = 2,
                      KeepingId = 3
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 2,
                      KeepingId = 1
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 3,
                      KeepingId = 3
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 4,
                      KeepingId = 2
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 5,
                      KeepingId = 1
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 6,
                      KeepingId = 2
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 7,
                      KeepingId = 1
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 8,
                      KeepingId = 2
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 9,
                      KeepingId = 1
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 10,
                      KeepingId = 2
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 11,
                      KeepingId = 1
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 12,
                      KeepingId = 2
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 12,
                      KeepingId = 1
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 13,
                      KeepingId = 1
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 14,
                      KeepingId = 2
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 15,
                      KeepingId = 1
                  },
                  new AnimalKeeping
                  {
                      AnimalId = 16,
                      KeepingId = 1
                  }
              );
        }
    }
}
