using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    class UserHelpConfiguration: IEntityTypeConfiguration<UserHelp>
    {
        public void Configure(EntityTypeBuilder<UserHelp> builder)
        {
            builder.HasKey(at => new { at.UserId, at.HelpId });

            builder.HasOne(user => user.User)
                .WithMany(at => at.UserHelps)
                .HasForeignKey(user => user.UserId);

            builder.HasOne(help => help.Help)
                .WithMany(at => at.UserHelps)
                .HasForeignKey(help => help.HelpId);

            builder.Property(an => an.UserId).IsRequired();
            builder.Property(an => an.HelpId).IsRequired();
        }
    }
}
