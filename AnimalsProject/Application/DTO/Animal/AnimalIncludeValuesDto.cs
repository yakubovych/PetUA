using Application.DTO.Defect;
using Application.DTO.VaccinationDtos;
using Application.DTO.Attitude;
using Application.DTO.Keeping;
using Application.DTO.Needs;
using Application.DTO.Description;
using Application.DTO.Processing;
using Application.DTO.Address;
using Application.DTO.Category;
using Application.DTO.Food;
using Application.DTO.Breed;
using System.Collections.Generic;
using System;

namespace Application.DTO.Animal
{
    public class AnimalIncludeValuesDto
    {
        public AnimalIncludeValuesDto()
        {
            Vaccinations = new HashSet<VaccinationFullDto>();
            Attitudes = new HashSet<AttitudeToDto>();
            Needs = new HashSet<NeedsDto>();
            Keepings = new HashSet<KeepingDto>();
            Processings = new HashSet<ProcessingDto>();
            Defects = new HashSet<DefectDto>();
            Videos = new HashSet<AnimalVideoDto>();
        }
        public long Id { get; set; }
        public string Name { get; set; }
        public DateTime DateOfBirth { get; set; }
        public double Weight { get; set; }
        public double WithersHeight { get; set; }
        public double NeckCircumference { get; set; }
        public string Comment { get; set; }
        public bool IsHidden { get; set; }
        public bool IsNew { get; set; }
        public DateTime FoundDate { get; set; }
        public bool ContinuatitonOfTreatment { get; set; }
        public long ChipNumber { get; set; }
        public string Gender { get; set; }
        public string Sterialization { get; set; }
        public AddressDto Address { get; set; }
        public CategoryDto Category { get; set; }
        public FoodDto Food { get; set; }
        public string Status { get; set; }
        public DescriptionDto Description { get; set; }
        public BreedDto Breeds { get; set; }
        public HashSet<VaccinationFullDto> Vaccinations { get; set; }
        public HashSet<AttitudeToDto> Attitudes { get; set; }
        public HashSet<DefectDto> Defects { get; set; }
        public HashSet<KeepingDto> Keepings { get; set; }
        public HashSet<ProcessingDto> Processings { get; set; }
        public HashSet<NeedsDto> Needs { get; set; }
        public HashSet<ImageDto> Images { get; set; }
        public HashSet<AnimalVideoDto> Videos { get; set; }
    }
}
