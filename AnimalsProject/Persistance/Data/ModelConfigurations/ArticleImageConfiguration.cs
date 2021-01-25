using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class ArticleImageConfiguration : IEntityTypeConfiguration<ArticleImage>
    {
        public void Configure(EntityTypeBuilder<ArticleImage> builder)
        {
            builder.Property(img => img.ImageData).IsRequired();

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<ArticleImage> builder)
        {
            builder.HasData(
                    new ArticleImage
                    {
                        Id = 1,
                        ArticleId = 1,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharka.jpg",
                        FileName = "vivcharka"
                    },
                    new ArticleImage
                    {
                        Id = 2,
                        ArticleId = 1,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/vivcharkaTwo.jpg",
                        FileName = "vivcharkaTwo"
                    },
                    new ArticleImage
                    {
                        Id = 3,
                        ArticleId = 2,
                        ImageData = "https://uapasvideos.blob.core.windows.net/videos/D:/video/labradorThree.jpg",
                        FileName = "labradorThree"
                    }
                );
        }
    }
}