using System;
using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class AdoptOrderConfiguration : IEntityTypeConfiguration<AdoptOrder>
    {
        public void Configure(EntityTypeBuilder<AdoptOrder> builder)
        {
            builder.Property(a => a.Id).ValueGeneratedOnAdd();
            builder.Property(a => a.Status).HasDefaultValue(Domain.Enums.OrderStatus.Pending);
            DataSeedConfigure(builder);
        }

        public void DataSeedConfigure(EntityTypeBuilder<AdoptOrder> builder)
        {
            builder.HasData(
                   new AdoptOrder
                   {
                       Id = 1,
                       AnimalId = 9,
                       UserId = "1",
                       Status = Domain.Enums.OrderStatus.Pending,
                       UserMotivation = "i want to adopt this pet, because i am alone, and need friend"
                   },
                   new AdoptOrder
                   {
                       Id = 2,
                       AnimalId = 3,
                       UserId = "2",
                       ClosingDate = DateTime.ParseExact("25/07/2019", "dd/MM/yyyy", null),
                       EndingDate = DateTime.ParseExact("05/08/2019", "dd/MM/yyyy", null),
                       UserMotivation = "i want to adopt this pet, because i have kebab cafe at the city center",
                       AdminComment = "Declined because your cause is criminal",
                       Status = Domain.Enums.OrderStatus.Approved
                   },
                   new AdoptOrder
                   {
                       Id = 3,
                       AnimalId = 10,
                       UserId = "1",
                       ClosingDate = DateTime.ParseExact("18/10/2019", "dd/MM/yyyy", null),
                       UserMotivation = "i want to adopt this pet, because i love pets, and want to help them",
                       Status = Domain.Enums.OrderStatus.Declined
                   }
            );
        }
    }
}
