using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class HelpConfiguration : IEntityTypeConfiguration<Help>
    {
        public void Configure(EntityTypeBuilder<Help> builder)
        {
            builder.Property(tag => tag.Id).ValueGeneratedOnAdd();
            builder.Property(tag => tag.KindOfHelp).IsRequired();

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<Help> builder)
        {
            builder.HasData(
                new Help
                {
                    Id = 1,
                    KindOfHelp = "Transport"
                },
                new Help
                {
                    Id = 2,
                    KindOfHelp = "Walking"
                },
                new Help
                {
                    Id = 3,
                    KindOfHelp = "Temporary placement"
                },
                new Help
                {
                    Id = 4,
                    KindOfHelp = "Other"
                }
                );
        }
    }
}
