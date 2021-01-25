using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class AnimalDescriptionConfiguration : IEntityTypeConfiguration<AnimalDescription>
    {
        public void Configure(EntityTypeBuilder<AnimalDescription> builder)
        {
            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<AnimalDescription> builder)
        {
            builder.HasData(
                    new AnimalDescription
                    {
                        Id = 1,
                        AnimalId = 2,
                        LanguageUa = "Привіт це песик",
                        LanguageEn = "Hi its dog"
                    },
                    new AnimalDescription
                    {
                        Id = 2,
                        AnimalId =3,
                        LanguageUa = "Привіт це котик",
                        LanguageEn = "Hi its cat"
                    },
                    new AnimalDescription
                    {
                        Id = 3,
                        AnimalId = 4,
                        LanguageUa = "Привіт це тваринка",
                        LanguageEn = "Hi its pet"
                    },
                    new AnimalDescription
                    {
                        Id = 4,
                        AnimalId = 5,
                        LanguageUa = "Привіт це інша тваринка",
                        LanguageEn = "Hi its another pet"
                    },
                    new AnimalDescription
                    {
                        Id = 5,
                        AnimalId = 6,
                        LanguageUa = "Привіт це дружелюбна тваринка",
                        LanguageEn = "Hi its friandly pet"
                    },
                    new AnimalDescription
                    {
                        Id = 6,
                        AnimalId = 7,
                        LanguageUa = "Привіт це мила тваринка",
                        LanguageEn = "Hi its cute pet"
                    }
                );
        }
    }
}
