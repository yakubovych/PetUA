using Application.DTO.Defect;
using Application.DTO.VaccinationDtos;
using Application.DTO.Attitude;
using Application.DTO.Keeping;
using Application.DTO.Needs;
using Application.DTO.Description;
using Application.DTO.Breed;
using Application.DTO.Processing;
using System;
using System.Collections.Generic;

namespace Application.DTO.Animal
{
    public class AnimalForCreationDto
    {
        public AnimalForCreationDto()
        {
            Vaccinations = new HashSet<VaccinationFullForCreationDto>();
            Attitudes = new HashSet<AttitudeToDto>();
            Needs = new HashSet<NeedsDto>();
            Keepings = new HashSet<KeepingDto>();
            Processings = new HashSet<ProcessingDto>();
            Defects = new HashSet<DefectDto>();
        }
        public string Name { get; set; }
        public DateTime DateOfBirth { get; set; }
        public double Weight { get; set; }
        public double WithersHeight { get; set; }
        public double NeckCircumference { get; set; }
        public bool IsHidden { get; set; }
        public bool IsNew { get; set; }
        public DateTime FoundDate { get; set; }
        public bool ContinuatitonOfTreatment { get; set; }
        public long ChipNumber { get; set; }
        public int Gender { get; set; }
        public int Sterialization { get; set; }
        public long AddressId { get; set; }
        public long CategoryId { get; set; }
        public long FoodId { get; set; }
        public BreedForCreationDto Breed { get; set; }
        public DescriptionForCreationDto Description { get; set; }
        public HashSet<VaccinationFullForCreationDto> Vaccinations { get; set; }
        public HashSet<AttitudeToDto> Attitudes { get; set; }
        public HashSet<DefectDto> Defects { get; set; }
        public HashSet<KeepingDto> Keepings { get; set; }
        public HashSet<ProcessingDto> Processings { get; set; }
        public HashSet<NeedsDto> Needs { get; set; }
    }
}
