using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class UserConfiguration : IEntityTypeConfiguration<User>
    {
        public void Configure(EntityTypeBuilder<User> builder)
        {
            builder.HasData(
                new User
                {
                    Id = "1",
                    Email = "pets.adoption.service@gmail.com",
                    NormalizedEmail = "PETS.ADOPTIONS.SERVICE@GMAIL.COM",
                    EmailConfirmed = true,
                    UserName = "pets.adoption.service@gmail.com",
                    NormalizedUserName = "PETS.ADOPTIONS.SERVICE@GMAIL.COM",
                    FullName = "Super main admin",
                    AddressId = 2,
                    PhoneNumber = "0974128341"
                },
                new User
                {
                    Id = "2",
                    Email = "service@gmail.com",
                    NormalizedEmail = "SERVICE@GMAIL.COM",
                    EmailConfirmed = true,
                    UserName = "service@gmail.com",
                    NormalizedUserName = "SERVICE@GMAIL.COM",
                    FullName = "just admin",
                    AddressId = 3,
                    PhoneNumber = "0974128342"
                });
        }
    }
}
