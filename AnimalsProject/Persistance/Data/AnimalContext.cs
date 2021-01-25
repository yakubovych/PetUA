using Domain.Models;
using Microsoft.EntityFrameworkCore;
using System;
using Persistance.Data.ModelConfigurations;
using System.Threading.Tasks;
using System.Threading;
using Domain.Common;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Persistance.Interfaces;

namespace Persistance.Data
{
    public class AnimalContext : IdentityDbContext<User>
    {
        private readonly ICurrentUserService _currentUserService;
        public AnimalContext(DbContextOptions options, ICurrentUserService currentUserService) : base(options) {
            _currentUserService = currentUserService;
        }

        public DbSet<Animal> Animals { get; set; }
        public DbSet<Help> Helps { get; set; }
        public DbSet<UserHelp> UserHelps { get; set; }
        public DbSet<AnimalLocationHistory> AnimalLocationHistories { get; set; }
        public DbSet<AnimalNeeds> AnimalNeeds { get; set; }
        public DbSet<Address> Addresses { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Food> Foods { get; set; }
        public DbSet<AttitudeTo> AttitudeTo { get; set; }
        public DbSet<Defect> Defects { get; set; }
        public DbSet<Image> Images { get; set; }
        public DbSet<AnimalVideo> AnimalVideos { get; set; }
        public DbSet<Keeping> Keepings { get; set; }
        public DbSet<AnimalKeeping> AnimalKeeping { get; set; }
        public DbSet<Needs> Needs { get; set; }
        public DbSet<Processing> Processings { get; set; }
        public DbSet<Vaccination> Vaccinations { get; set; }
        public DbSet<AdoptOrder> AdoptOrders { get; set; }
        public DbSet<BookOrder> BookOrders { get; set; }
        public DbSet<Article> Articles { get; set; }
        public DbSet<Tag> Tags { get; set; }
        public DbSet<ArticleTag> ArticleTags { get; set; }
        public DbSet<ArticleImage> ArticleImages { get; set; }
        public DbSet<AnimalViewLocation> AnimalViewLocations { get; set; }
        public DbSet<AnimalDescription> AnimalDescriptions { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                var connectionString = "Server=(localdb)\\MSSQLLocalDB; Database=AnimalDb; Integrated Security=True;";

                optionsBuilder.UseSqlServer(connectionString);
            }
        }

        public override Task<int> SaveChangesAsync(CancellationToken cancellationToken = new CancellationToken())
        {
            foreach (var entry in ChangeTracker.Entries<AnimalBase>())
            {
                switch (entry.State)
                {
                    case EntityState.Added:
                        entry.Entity.Created = DateTime.Now;
                        entry.Entity.CreatedBy = _currentUserService?.UserEmail;
                        break;
                    case EntityState.Modified:
                        entry.Entity.LastModified = DateTime.Now;
                        entry.Entity.LastModifiedBy = _currentUserService?.UserEmail;
                        break;
                }
            }

            return base.SaveChangesAsync(cancellationToken);
        }

        public override int SaveChanges()
        {
            foreach (var entry in ChangeTracker.Entries<AnimalBase>())
            {
                switch (entry.State)
                {
                    case EntityState.Added:
                        entry.Entity.Created = DateTime.Now;
                        entry.Entity.CreatedBy = _currentUserService?.UserEmail;
                        break;
                    case EntityState.Modified:
                        entry.Entity.LastModified = DateTime.Now;
                        entry.Entity.LastModifiedBy = _currentUserService?.UserEmail;
                        break;
                }
            }

            return base.SaveChanges();
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.ApplyConfiguration(new UserConfiguration());
            modelBuilder.ApplyConfiguration(new RoleConfiguration());
            modelBuilder.ApplyConfiguration(new UserRoleConfiguration());
            modelBuilder.ApplyConfiguration(new AddressConfiguration());
            modelBuilder.ApplyConfiguration(new CategoryConfiguration());
            modelBuilder.ApplyConfiguration(new FoodConfiguration());
            modelBuilder.ApplyConfiguration(new AnimalDescriptionConfiguration());
            modelBuilder.ApplyConfiguration(new BreedConfiguration());
            modelBuilder.ApplyConfiguration(new AnimalConfiguration());
            modelBuilder.ApplyConfiguration(new VaccinationConfiguration());
            modelBuilder.ApplyConfiguration(new ProcessingConfiguration());
            modelBuilder.ApplyConfiguration(new DefectConfiguration());
            modelBuilder.ApplyConfiguration(new AttitudeToConfiguration());
            modelBuilder.ApplyConfiguration(new NeedsConfiguration());
            modelBuilder.ApplyConfiguration(new KeepingConfiguration());
            modelBuilder.ApplyConfiguration(new AnimalAttitudeToConfiguration());
            modelBuilder.ApplyConfiguration(new AnimalDefectsConfiguration());
            modelBuilder.ApplyConfiguration(new AnimalKeepingConfiguration());
            modelBuilder.ApplyConfiguration(new AnimalNeedsConfiguration());
            modelBuilder.ApplyConfiguration(new ArticleConfiguration());
            modelBuilder.ApplyConfiguration(new TagConfiguration());
            modelBuilder.ApplyConfiguration(new ArticleImageConfiguration());
            modelBuilder.ApplyConfiguration(new ArticleTagConfiguration());
            modelBuilder.ApplyConfiguration(new AnimalVaccinationConfiguration());
            modelBuilder.ApplyConfiguration(new AnimalProcessingConfiguration());
            modelBuilder.ApplyConfiguration(new AdoptOrderConfiguration());
            modelBuilder.ApplyConfiguration(new BookOrderConfiguration());
            modelBuilder.ApplyConfiguration(new ImagesConfiguration());
            modelBuilder.ApplyConfiguration(new HelpConfiguration());
            modelBuilder.ApplyConfiguration(new UserHelpConfiguration());
            modelBuilder.ApplyConfiguration(new AnimalVideoConfiguration());

            CreateRelations(modelBuilder);
        }

        private void CreateRelations(ModelBuilder builder)
        {
            builder.Entity("Domain.Models.BookOrder", b =>
            {
                b.HasOne("Domain.Models.Animal", "Animal")
                    .WithMany("BookOrders")
                    .HasForeignKey("AnimalId")
                    .OnDelete(DeleteBehavior.Cascade)
                    .IsRequired();

                b.HasOne("Domain.Models.User", "User")
                    .WithMany("BookOrders")
                    .HasForeignKey("UserId")
                    .OnDelete(DeleteBehavior.Cascade);
            });

            builder.Entity("Domain.Models.AdoptOrder", b =>
            {
                b.HasOne("Domain.Models.Animal", "Animal")
                    .WithMany("AdoptOrders")
                    .HasForeignKey("AnimalId")
                    .OnDelete(DeleteBehavior.Cascade)
                    .IsRequired();

                b.HasOne("Domain.Models.User", "User")
                    .WithMany("AdoptOrders")
                    .HasForeignKey("UserId");
            });

            builder.Entity("Domain.Models.User", b =>
            {
                b.HasOne("Domain.Models.Address", "Address")
                    .WithMany("Users")
                    .HasForeignKey("AddressId")
                    .OnDelete(DeleteBehavior.Restrict)
                    .IsRequired();
            });

            builder.Entity("Domain.Models.AnimalLocationHistory", b =>
            {
                b.HasOne("Domain.Models.Address", "Address")
                    .WithMany()
                    .HasForeignKey("AddressId")
                    .OnDelete(DeleteBehavior.Restrict)
                    .IsRequired();

                b.HasOne("Domain.Models.Animal", "Animal")
                    .WithMany("AnimalLocationHistories")
                    .HasForeignKey("AnimalId")
                    .OnDelete(DeleteBehavior.Cascade)
                    .IsRequired();
            });
        }
    }
}
