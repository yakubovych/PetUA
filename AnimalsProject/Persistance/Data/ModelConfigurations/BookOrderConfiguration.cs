using System;
using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class BookOrderConfiguration : IEntityTypeConfiguration<BookOrder>
    {
        public void Configure(EntityTypeBuilder<BookOrder> builder)
        {
            builder.Property(a => a.Id).ValueGeneratedOnAdd();
            builder.Property(a => a.Status).HasDefaultValue(Domain.Enums.OrderStatus.Pending);

            DataSeedConfigure(builder);
        }

        public void DataSeedConfigure(EntityTypeBuilder<BookOrder> builder)
        {
            builder.HasData(
                  new BookOrder
                  {
                      Id = 1,
                      AnimalId = 6,
                      UserId = "1",
                      ClosingDate = DateTime.ParseExact("28/06/2019", "dd/MM/yyyy", null),
                      Status = Domain.Enums.OrderStatus.Declined,
                      UserMotivation = "I want to book this pet, because i love cats",
                      AdminComment = "i can not approve your request, because I I couldn't reach you"
                  },
                  new BookOrder
                  {
                      Id = 2,
                      AnimalId = 7,
                      UserId = "2",
                      ClosingDate = DateTime.ParseExact("25/09/2019", "dd/MM/yyyy", null),
                      EndingDate = DateTime.ParseExact("16/11/2019", "dd/MM/yyyy", null),
                      Status = Domain.Enums.OrderStatus.Approved,
                      UserMotivation = "I want to book this pet, because i like it, and i want to take care of him"
                  },
                  new BookOrder
                  {
                      Id = 3,
                      AnimalId = 12,
                      UserId = "1",
                      ClosingDate = DateTime.ParseExact("17/11/2019", "dd/MM/yyyy", null),
                      Status = Domain.Enums.OrderStatus.Declined,
                      UserMotivation = "I want to book this pet, because my doughter like dogs",
                      AdminComment = "I can not approve your request, because your reason is dont enought for booking pet"
                  }
           );
        }
    }
}
