using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class ArticleConfiguration : IEntityTypeConfiguration<Article>
    {
        public void Configure(EntityTypeBuilder<Article> builder)
        {
            builder.Property(article => article.Id).ValueGeneratedOnAdd();
            builder.Property(article => article.Content).IsRequired();

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<Article> builder)
        {
            builder.HasData(
                new Article
                {
                    Id = 1,
                    Title = "Vaccination in animals",
                    Content = "Vaccines are understood to be one of the greatest breakthroughs in modern medicine. Here, Health Europa explores how vaccines have benefitted not only humans but also animals, and limited the transmission of zoonotic diseases." +
                    "How are animal vaccines preventing the transmission of zoonotic diseases?" +
                    "The vaccination of pets and farm animals is essential in order to maintain good animal health and welfare," +
                    "whilst also reducing the disease burden in pets and livestock.As mutations of infection and disease develop," +
                    "the role of vaccines in preventative treatment and disease control programmes is integral.With a long and successful history of preventing and controlling disease," +
                    "the veterinary vaccines of today are symbolic of years of cutting - edge research but also represent the diseases faced by pets and livestock.",
                    UserId = "1",
                    CreatedBy = "pets.adoption.service@gmail.com"
                },
                new Article
                {
                    Id = 2,
                    Title = "Animal health",
                    Content = "Animal health includes the healthcare of animals that implement government policies to prevent or to manage outbreaks of serious animal diseases and to support the farming industry. It involves animal health care programs and protection of the livestock and wildlife in the environment. Mainly the exotic and rare species of the animals are managed with utmost care in the given areas." +
                    "Given that the data in the study comes from death certificates, which are notoriously inaccurate, it's impossible to tell how much the data reflects reality. And since the study only looks at fatalities, not injuries, it's not clear how many people come close to death but make it out alive. But overall, the message of the study is surprisingly heartening for an analysis of death. You may be scared of scorpions and bears, but animal interactions rarely turn deadly. And besides: given humans' ability to wipe out plants, animals, and each other, we're still one of the most dangerous species in America ... and on Earth",
                    UserId = "1",
                    CreatedBy = "pets.adoption.service@gmail.com"
                }
                );
        }
    }
}
