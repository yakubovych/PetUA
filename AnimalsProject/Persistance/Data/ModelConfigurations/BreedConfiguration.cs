using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class BreedConfiguration : IEntityTypeConfiguration<Breed>
    {
        public void Configure(EntityTypeBuilder<Breed> builder)
        {
            builder.Property(animl => animl.BreedEnglish).HasMaxLength(200);
            builder.Property(animl => animl.BreedUkrainian).HasMaxLength(200);
            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<Breed> builder)
        {
            builder.HasData(
                    new Breed
                    {
                        Id = 1,
                        BreedUkrainian = "абіссінський",
                        BreedEnglish = "Abyssinian"
                    },
                    new Breed
                    {
                        Id = 2,
                        BreedUkrainian = "Кінтамані",
                        BreedEnglish = "Kintamani"
                    },
                    new Breed
                    {
                        Id = 3,
                        BreedUkrainian = "Японський Тер'єр",
                        BreedEnglish = "Japanese Terrier"
                    },
                    new Breed
                    {
                        Id = 4,
                        BreedUkrainian = "Бірманська кішка",
                        BreedEnglish = "Birman"
                    },
                    new Breed
                    {
                        Id = 5,
                        BreedUkrainian = "Хорт",
                        BreedEnglish = "Greyhound"
                    },
                    new Breed
                    {
                        Id = 6,
                        BreedUkrainian = "Французький бульдог",
                        BreedEnglish = "French Bulldog"
                    },
                    new Breed
                    {
                        Id = 7,
                        BreedUkrainian = "Бенгальський",
                        BreedEnglish = "Bengal"
                    },
                    new Breed
                    {
                        Id = 8,
                        BreedUkrainian = "Собака Макнаба",
                        BreedEnglish = "McNab dog"
                    },
                    new Breed
                    {
                        Id = 9,
                        BreedUkrainian = "Сапсали",
                        BreedEnglish = "Sapsali"
                    },
                    new Breed
                    {
                        Id = 10,
                        BreedUkrainian = "Собака Пуссан",
                        BreedEnglish = "Pungsan dog"
                    },
                    new Breed
                    {
                        Id = 11,
                        BreedUkrainian = "Кай Кен",
                        BreedEnglish = "Kai Ken"
                    }
                );
        }
    }
}
