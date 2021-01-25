using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class ImagesConfiguration : IEntityTypeConfiguration<Image>
    {
        public void Configure(EntityTypeBuilder<Image> builder)
        {
            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<Image> builder)
        {
            builder.HasData(
                    new Image
                    {
                        Id = 1,
                        AnimalId = 2,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/frenchBulldog.jpg",
                        FileName = "frenchBulldog"
                    },
                    new Image
                    {
                        Id = 2,
                        AnimalId = 2,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/frenchBulldogTwo.jpg",
                        FileName = "frenchBulldogTwo"
                    },
                    new Image
                    {
                        Id = 3,
                        AnimalId = 3,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/germanDog.jpg",
                        FileName = "germanDog"
                    },
                    new Image
                    {
                        Id = 4,
                        AnimalId = 3,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/germanDogTwo.jpg",
                        FileName = "germanDogTwo"
                    },
                    new Image
                    {
                        Id = 5,
                        AnimalId = 4,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/haski.jpg",
                        FileName = "haski"
                    },
                    new Image
                    {
                        Id = 6,
                        AnimalId = 5,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/haskiThree.jpg",
                        FileName = "haskiThree"
                    },
                    new Image
                    {
                        Id = 7,
                        AnimalId = 6,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/haskiTwo.jpg",
                        FileName = "haskiTwo"
                    },
                    new Image
                    {
                        Id = 8,
                        AnimalId = 7,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/horse.jpg",
                        FileName = "horse"
                    },
                    new Image
                    {
                        Id = 9,
                        AnimalId = 8,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/horseTwo.jpg",
                        FileName = "horseTwo"
                    },
                    new Image
                    {
                        Id = 10,
                        AnimalId = 9,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/kit.jpeg",
                        FileName = "kit"
                    },
                    new Image
                    {
                        Id = 11,
                        AnimalId = 10,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/kitThree.jpeg",
                        FileName = "kitThree"
                    },
                    new Image
                    {
                        Id = 12,
                        AnimalId = 11,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/kitTwo.jpeg",
                        FileName = "kitTwo"
                    },
                    new Image
                    {
                        Id = 13,
                        AnimalId = 12,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/labrador.jpg",
                        FileName = "labrador"
                    },
                    new Image
                    {
                        Id = 14,
                        AnimalId = 13,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/labradorThree.jpg",
                        FileName = "labradorThree"
                    },
                    new Image
                    {
                        Id = 15,
                        AnimalId = 14,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/labradorTwo.jpg",
                        FileName = "labradorTwo"
                    },
                    new Image
                    {
                        Id = 16,
                        AnimalId = 14,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharka.jpg",
                        FileName = "vivcharka"
                    },
                    new Image
                    {
                        Id = 17,
                        AnimalId = 14,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharkaTwo.jpg",
                        FileName = "vivcharkaTwo"
                    }
                );
        }
    }
}
