using System;
using Domain.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Persistance.Data.ModelConfigurations
{
    public class AnimalVaccinationConfiguration : IEntityTypeConfiguration<AnimalVaccination>
    {
        public void Configure(EntityTypeBuilder<AnimalVaccination> builder)
        {
            builder.HasKey(at => new { at.AnimalId, at.VaccinationId, at.VaccinationDate, at.NextVaccinationDate} );
            
            builder.HasOne(a => a.Animal)
                .WithMany(at => at.AnimalVaccinations)
                .HasForeignKey(a => a.AnimalId);
            
            builder.HasOne(at => at.Vaccination)
                .WithMany(a => a.AnimalVaccinations)
                .HasForeignKey(at => at.VaccinationId);

            builder.Property(av => av.AnimalId).IsRequired();
            builder.Property(av => av.VaccinationId).IsRequired();
            builder.Property(av => av.VaccinationDate).IsRequired();
            builder.Property(av => av.NextVaccinationDate).IsRequired();

            DataSeedConfigure(builder);
        }

        private void DataSeedConfigure(EntityTypeBuilder<AnimalVaccination> builder)
        {
            builder.HasData(
                   new AnimalVaccination
                   {
                       AnimalId = 2,
                       VaccinationId = 3,
                       VaccinationDate = DateTime.ParseExact("12/08/2019", "dd/MM/yyyy", null),
                       NextVaccinationDate = DateTime.ParseExact("12/03/2020", "dd/MM/yyyy", null)
                   },
                   new AnimalVaccination
                   {
                       AnimalId = 2,
                       VaccinationId = 4,
                       VaccinationDate = DateTime.ParseExact("12/08/2019", "dd/MM/yyyy", null),
                       NextVaccinationDate = DateTime.ParseExact("12/08/2020", "dd/MM/yyyy", null)
                   },
                   new AnimalVaccination
                   {
                       AnimalId = 3,
                       VaccinationId = 2,
                       VaccinationDate = DateTime.ParseExact("12/08/2019", "dd/MM/yyyy", null),
                       NextVaccinationDate = DateTime.ParseExact("12/07/2020", "dd/MM/yyyy", null)
                   },
                   new AnimalVaccination
                   {
                       AnimalId = 5,
                       VaccinationId = 1,
                       VaccinationDate = DateTime.ParseExact("12/08/2019", "dd/MM/yyyy", null),
                       NextVaccinationDate = DateTime.ParseExact("12/06/2020", "dd/MM/yyyy", null)
                   },
                   new AnimalVaccination
                   {
                       AnimalId = 5,
                       VaccinationId = 3,
                       VaccinationDate = DateTime.ParseExact("12/08/2019", "dd/MM/yyyy", null),
                       NextVaccinationDate = DateTime.ParseExact("12/05/2020", "dd/MM/yyyy", null)
                   },
                   new AnimalVaccination
                   {
                       AnimalId = 5,
                       VaccinationId = 5,
                       VaccinationDate = DateTime.ParseExact("12/08/2019", "dd/MM/yyyy", null),
                       NextVaccinationDate = DateTime.ParseExact("12/04/2020", "dd/MM/yyyy", null)
                   }
               );
        }
    }
}
