using System;
using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class AnimalProcessingConfiguration : IEntityTypeConfiguration<AnimalProcessing>
    {
        public void Configure(EntityTypeBuilder<AnimalProcessing> builder)
        {
            builder.HasKey(at => new { at.AnimalId, at.ProcessingId });
            
            builder.HasOne(a => a.Animal)
                .WithMany(at => at.AnimalProcessings)
                .HasForeignKey(a => a.AnimalId);
            
            builder.HasOne(at => at.Processing)
                .WithMany(a => a.AnimalProcessings)
                .HasForeignKey(at => at.ProcessingId);

            builder.Property(ap => ap.AnimalId).IsRequired();
            builder.Property(ap => ap.ProcessingId).IsRequired();
            builder.Property(ap => ap.ProcessingDate).IsRequired();
            builder.Property(ap => ap.NextProcessingDate).IsRequired();

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<AnimalProcessing> builder)
        {
            builder.HasData(
                   new AnimalProcessing
                   {
                       AnimalId = 7,
                       ProcessingId = 1,
                       IsRepeat = true,
                       ProcessingDate = DateTime.ParseExact("12/08/2019", "dd/MM/yyyy", null),
                       NextProcessingDate = DateTime.ParseExact("12/03/2020", "dd/MM/yyyy", null)
                   },
                   new AnimalProcessing
                   {
                       AnimalId = 4,
                       ProcessingId = 2,
                       IsRepeat = true,
                       ProcessingDate = DateTime.ParseExact("12/08/2019", "dd/MM/yyyy", null),
                       NextProcessingDate = DateTime.ParseExact("12/04/2020", "dd/MM/yyyy", null)
                   },
                   new AnimalProcessing
                   {
                       AnimalId = 8,
                       ProcessingId = 2,
                       IsRepeat = false,
                       ProcessingDate = DateTime.ParseExact("12/08/2019", "dd/MM/yyyy", null),
                   },
                   new AnimalProcessing
                   {
                       AnimalId = 11,
                       ProcessingId = 1,
                       IsRepeat = true,
                       ProcessingDate = DateTime.ParseExact("12/08/2019", "dd/MM/yyyy", null),
                       NextProcessingDate = DateTime.ParseExact("14/03/2020", "dd/MM/yyyy", null)
                   },
                   new AnimalProcessing
                   {
                       AnimalId = 11,
                       ProcessingId = 2,
                       IsRepeat = true,
                       ProcessingDate = DateTime.ParseExact("12/02/2019", "dd/MM/yyyy", null),
                       NextProcessingDate = DateTime.ParseExact("12/03/2020", "dd/MM/yyyy", null)
                   },
                   new AnimalProcessing
                   {
                       AnimalId = 9,
                       ProcessingId = 2,
                       IsRepeat = false,
                       ProcessingDate = DateTime.ParseExact("11/07/2019", "dd/MM/yyyy", null),
                   }
              );
        }
    }
}
