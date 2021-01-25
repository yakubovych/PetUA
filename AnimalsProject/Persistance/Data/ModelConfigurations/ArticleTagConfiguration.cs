using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class ArticleTagConfiguration : IEntityTypeConfiguration<ArticleTag>
    {
        public void Configure(EntityTypeBuilder<ArticleTag> builder)
        {
            builder.HasKey(at => new { at.ArticleId, at.TagId });

            builder.HasOne(a => a.Article)
                .WithMany(at => at.ArticleTags)
                .HasForeignKey(a => a.ArticleId);

            builder.HasOne(at => at.Tag)
                .WithMany(a => a.ArticleTags)
                .HasForeignKey(at => at.TagId);

            builder.Property(anDef => anDef.TagId).IsRequired();
            builder.Property(anDef => anDef.ArticleId).IsRequired();

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<ArticleTag> builder)
        {
            builder.HasData(
                new ArticleTag
                {
                    ArticleId = 1,
                    TagId = 1
                },
                new ArticleTag
                {
                    ArticleId = 2,
                    TagId = 3
                },
                new ArticleTag
                {
                    ArticleId = 2,
                    TagId = 5
                }
           );
        }
    }
}
