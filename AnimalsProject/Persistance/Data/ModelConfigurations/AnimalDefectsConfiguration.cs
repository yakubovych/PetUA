using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class AnimalDefectsConfiguration : IEntityTypeConfiguration<AnimalDefects>
    {
        public void Configure(EntityTypeBuilder<AnimalDefects> builder)
        {
            builder.HasKey(at => new { at.AnimalId, at.DefectsId });

            builder.HasOne(a => a.Animal)
                .WithMany(at => at.AnimalDefects)
                .HasForeignKey(a => a.AnimalId);

            builder.HasOne(at => at.Defect)
                .WithMany(a => a.AnimalDefects)
                .HasForeignKey(at => at.DefectsId);

            builder.Property(anDef => anDef.AnimalId).IsRequired();
            builder.Property(anDef => anDef.DefectsId).IsRequired();

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<AnimalDefects> builder)
        {
            builder.HasData(
                     new AnimalDefects
                     {
                         AnimalId = 13,
                         DefectsId = 1
                     },
                     new AnimalDefects
                     {
                         AnimalId = 10,
                         DefectsId = 2
                     },
                     new AnimalDefects
                     {
                         AnimalId = 8,
                         DefectsId = 1
                     },
                     new AnimalDefects
                     {
                         AnimalId = 11,
                         DefectsId = 4,
                     }
                 );
        }
    }
}
