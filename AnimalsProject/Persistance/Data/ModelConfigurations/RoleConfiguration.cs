using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class RoleConfiguration : IEntityTypeConfiguration<IdentityRole>
    {
        public void Configure(EntityTypeBuilder<IdentityRole> builder)
        {
            builder.HasData(
            new IdentityRole
            {
                Id = "1",
                Name = "SuperAdmin",
                NormalizedName = "SUPERADMIN"
            },
            new IdentityRole
            {
                Id = "2",
                Name = "Admin",
                NormalizedName = "ADMIN"
            },
            new IdentityRole
            {
                Id = "3",
                Name = "Observer",
                NormalizedName = "OBSERVER"
            },
            new IdentityRole
            {
                Id = "4",
                Name = "User",
                NormalizedName = "USER"
            });

        }
    }
}
