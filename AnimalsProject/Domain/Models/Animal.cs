using Domain.Common;
using Domain.Enums;
using System;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace Domain.Models
{
    public class Animal : Viewable
    {
        public Animal()
        {
            AnimalVaccinations = new List<AnimalVaccination>();
            AnimalLocationHistories = new List<AnimalLocationHistory>();
            AnimalAttitudes = new List<AnimalAttitudeTo>();
            AnimalNeeds = new List<AnimalNeeds>();
            AnimalKeepings = new List<AnimalKeeping>();
            AnimalProcessings = new List<AnimalProcessing>();
            AnimalDefects = new List<AnimalDefects>();
            AdoptOrders = new List<AdoptOrder>();
            BookOrders = new List<BookOrder>();
            Images = new List<Image>();
            Videos = new List<AnimalVideo>();
            AnimalViewLocations = new List<AnimalViewLocation>();
        }

        public long Id { get; set; }
        public string Name { get; set; }
        [DataType(DataType.Date)]
        public DateTime DateOfBirth { get; set; }
        public double Weight { get; set; }
        public double WithersHeight { get; set; }
        public double NeckCircumference { get; set; }
        public string Comment { get; set; }
        public bool IsHidden { get; set; }
        public AnimalStatus Status { get; set; }
        public bool IsNew { get; set; }
        public DateTime FoundDate { get; set; }
        public bool ContinuatitonOfTreatment { get; set; }
        public long ChipNumber { get; set; }
        public Gender Gender { get; set; }
        public Sterialization Sterialization { get; set; }
        public long AddressId { get; set; }
        public Address Address { get; set; }
        public long CategoryId { get; set; }
        public Category Category { get; set; }
        public long FoodId { get; set; }
        public Food Food { get; set; }
        public AnimalDescription Description { get; set; }
        public long BreedId { get; set; }
        public Breed Breed { get; set; }
        public IList<AnimalLocationHistory> AnimalLocationHistories { get; set; }
        public IList<AnimalVaccination> AnimalVaccinations { get; set; }
        public IList<AnimalAttitudeTo> AnimalAttitudes { get; set; }
        public IList<AnimalDefects> AnimalDefects { get; set; }
        public IList<AnimalKeeping> AnimalKeepings { get; set; }
        public IList<AnimalProcessing> AnimalProcessings { get; set; }
        public IList<AnimalNeeds> AnimalNeeds { get; set; }
        public IList<AdoptOrder> AdoptOrders { get; set; }
        public IList<BookOrder> BookOrders { get; set; }
        public IList<Image> Images { get; set; }
        public IList<AnimalVideo> Videos { get; set; }
        public IList<AnimalViewLocation> AnimalViewLocations { get; set; }
    }
}
