using Domain.Enums;
using Domain.Models;
using System;
using System.Collections.Generic;

namespace Application.Tests.TestData
{
    public static class AnimalsTestData
    {
        public static List<Animal> Animals = new List<Animal>()
        {
              new Animal
              {
                  Id = 2,
                  Name = "Lola",
                  CategoryId = 2,
                  Category = new Category
                  {
                        Id = 2,
                        Name = "Cat"
                  },
                  AddressId = 2,
                  Address = new Address
                  {
                    Id = 2,
                    Name = "Hamburg"
                  },
                  FoodId = 2,
                  Food = new Food
                  {
                      Id = 2,
                      Name = "Medical feed"
                  },
                  Status = AnimalStatus.Booked,
                  ChipNumber = 13345678,
                  ContinuatitonOfTreatment = false,
                  Weight = 25.5,
                  WithersHeight = 45,
                  DateOfBirth = DateTime.ParseExact("18/08/2017","dd/MM/yyyy",null),
                  Gender = Gender.Female,
                  Sterialization = Sterialization.NotForHealthReasons,
                  NeckCircumference = 9.2,
                  IsNew = true,
                  FoundDate = DateTime.ParseExact("15/10/2019", "dd/MM/yyyy", null),
                  Created = DateTime.ParseExact("15/10/2019", "dd/MM/yyyy", null),
                  Comment = "Comment1",
                  ViewCount = 2,
                  BookOrders = new List<BookOrder>()
                  {
                      new BookOrder
                      {
                          Id = 1,
                          AnimalId = 2,
                          UserId = "1",
                          ClosingDate = DateTime.ParseExact("12/04/2020", "dd/MM/yyyy", null),
                          EndingDate =  DateTime.Now.AddMinutes(100),
                          Status = Domain.Enums.OrderStatus.Approved,
                          UserMotivation = "I want to book this pet, because i love cats",
                          AdminComment = "i can not approve your request, because I I couldn't reach you"
                      }
                  }
              },
              new Animal
              {
                  Id = 3,
                  Name = "Josh",
                  CategoryId = 1,
                  Category = new Category
                  {
                      Id = 1,
                      Name = "Dog"
                  },
                  AddressId = 1,
                  Address = new Address
                  {
                    Id = 1,
                    Name = "Berlin"
                  },
                  FoodId = 1,
                  Food = new Food
                  {
                      Id = 1,
                      Name = "Premium feed"
                  },
                  Status = AnimalStatus.Adopted,
                  Comment = "Good pet. Ty for service.",
                  ChipNumber = 12245678,
                  ContinuatitonOfTreatment = true,
                  Weight = 15.5,
                  WithersHeight = 15,
                  DateOfBirth = DateTime.ParseExact("07/10/2018", "dd/MM/yyyy", null),
                  Gender = Gender.Male,
                  Sterialization = Sterialization.Yes,
                  NeckCircumference = 10.2,
                  IsNew = false,
                  FoundDate = DateTime.ParseExact("15/10/2019", "dd/MM/yyyy", null),
                  Created = DateTime.ParseExact("15/10/2019", "dd/MM/yyyy", null),
                  ViewCount = 2,
                  BookOrders = new List<BookOrder>()
              },
              new Animal
              {
                  Id = 4,
                  Name = "Jimbo",
                  CategoryId = 3,
                  Category = new Category
                  {
                        Id = 3,
                        Name = "Others"
                  },
                  AddressId = 4,
                  Address = new Address
                  {
                    Id = 4,
                    Name = "Cologne"
                  },
                  FoodId = 3,
                  Food = new Food
                  {
                      Id = 3,
                      Name = "Natural feed"
                  },
                  Status = AnimalStatus.Booked,
                  ChipNumber = 12445678,
                  ContinuatitonOfTreatment = false,
                  Weight = 5.5,
                  WithersHeight = 5,
                  DateOfBirth = DateTime.ParseExact("07/10/2014", "dd/MM/yyyy", null),
                  Gender = Gender.Male,
                  Sterialization = Sterialization.NotByAge,
                  NeckCircumference = 10.2,
                  IsNew = false,
                  FoundDate = DateTime.ParseExact("15/10/2019", "dd/MM/yyyy", null),
                  Created = DateTime.ParseExact("15/10/2019", "dd/MM/yyyy", null),
                  Comment = "Comment2",
                  ViewCount = 3,
                  BookOrders = new List<BookOrder>()
                  {
                      new BookOrder
                      {
                          Id = 2,
                          AnimalId = 4,
                          UserId = "2",
                          ClosingDate = DateTime.ParseExact("10/04/2020", "dd/MM/yyyy", null),
                          EndingDate = DateTime.Now.AddMinutes(200),
                          Status = Domain.Enums.OrderStatus.Approved,
                          UserMotivation = "I want to book this pet, because i like it, and i want to take care of him"
                      },
                      new BookOrder
                      {
                          Id = 3,
                          AnimalId = 4,
                          UserId = "1",
                          ClosingDate = DateTime.ParseExact("17/11/2019", "dd/MM/yyyy", null),
                          Status = Domain.Enums.OrderStatus.Declined,
                          UserMotivation = "I want to book this pet, because my doughter like dogs",
                          AdminComment = "I can not approve your request, because your reason is dont enought for booking pet"
                      }
                  }
              },
              new Animal
              {
                  Id = 5,
                  Name = "Arnold",
                  CategoryId = 1,
                  Category = new Category
                  {
                        Id = 1,
                        Name = "Dog"
                  },
                  AddressId = 1,
                  Address = new Address
                  {
                    Id = 1,
                    Name = "Berlin"
                  },
                  FoodId = 1,
                  Food = new Food
                  {
                      Id = 1,
                      Name = "Premium feed"
                  },
                  Status = AnimalStatus.None,
                  ChipNumber = 12355678,
                  ContinuatitonOfTreatment = false,
                  Weight = 2.5,
                  WithersHeight = 15,
                  DateOfBirth = DateTime.ParseExact("07/07/2018", "dd/MM/yyyy", null),
                  Gender = Gender.Female,
                  Sterialization = Sterialization.Yes,
                  NeckCircumference = 10.2,
                  IsNew = false,
                  FoundDate = DateTime.ParseExact("15/10/2019", "dd/MM/yyyy", null),
                  Created = DateTime.ParseExact("15/10/2019", "dd/MM/yyyy", null),
                  Comment = "Comment3",
                  ViewCount = 1,
                  BookOrders = new List<BookOrder>()
              },
              new Animal
              {
                  Id = 6,
                  Name = "Sonia",
                  CategoryId = 2,
                  Category = new Category
                  {
                        Id = 2,
                        Name = "Cat"
                  },
                  AddressId = 6,
                  Address = new Address
                  {
                    Id = 6,
                    Name = "Stuttgart"
                  },
                  FoodId = 2,
                  Status = AnimalStatus.Adopted,
                  ChipNumber = 12346678,
                  ContinuatitonOfTreatment = true,
                  Weight = 25.5,
                  WithersHeight = 45,
                  DateOfBirth = DateTime.ParseExact("12/10/2019", "dd/MM/yyyy", null),
                  Gender = Gender.Male,
                  Sterialization = Sterialization.Yes,
                  NeckCircumference = 1.2,
                  IsNew = true,
                  FoundDate = DateTime.ParseExact("15/10/2019", "dd/MM/yyyy", null),
                  Created = DateTime.ParseExact("15/10/2019", "dd/MM/yyyy", null),
                  BookOrders = new List<BookOrder>()
              },
              new Animal
              {
                   Id = 1,
                   Name = "Arnold",
                   CategoryId = 2,
                   Category = new Category
                  {
                        Id = 2,
                        Name = "Cat"
                  },
                  AddressId = 6,
                  Address = new Address
                  {
                    Id = 6,
                    Name = "Stuttgart"
                  },
                  FoodId = 2,
                  Food = new Food
                  {
                      Id = 2,
                      Name = "Medical feed"
                  },
                  Status = AnimalStatus.Adopted,
                  ChipNumber = 12346678,
                  ContinuatitonOfTreatment = true,
                  Weight = 25.5,
                  WithersHeight = 45,
                  DateOfBirth = DateTime.ParseExact("12/10/2019", "dd/MM/yyyy", null),
                  Gender = Gender.Male,
                  Sterialization = Sterialization.Yes,
                  NeckCircumference = 1.2,
                  IsNew = true,
                  FoundDate = DateTime.ParseExact("15/10/2019", "dd/MM/yyyy", null),
                  Created = DateTime.ParseExact("15/10/2019", "dd/MM/yyyy", null),
                  Comment = "Comment4",
                  ViewCount = 1,
                  BookOrders = new List<BookOrder>()
                  {
                      new BookOrder
                      {
                          Id = 6,
                          AnimalId = 1,
                          UserId = "2",
                          ClosingDate = DateTime.ParseExact("10/04/2020", "dd/MM/yyyy", null),
                          EndingDate = DateTime.Now.AddMinutes(200),
                          Status = Domain.Enums.OrderStatus.Approved,
                          UserMotivation = "like it, and i want to take care of him"
                      },
                      new BookOrder
                      {
                          Id = 9,
                          AnimalId = 1,
                          UserId = "1",
                          ClosingDate = DateTime.ParseExact("17/11/2019", "dd/MM/yyyy", null),
                          Status = Domain.Enums.OrderStatus.Declined,
                          UserMotivation = "like dogs",
                          AdminComment = "dont enought for booking pet"
                      }
                  },
                  AnimalLocationHistories = new List<AnimalLocationHistory>()
                  {
                      new AnimalLocationHistory
                      {
                          Id = 1,
                          AddressId = 6,
                          AnimalId = 1,
                          Date = DateTime.ParseExact("15/10/2019", "dd/MM/yyyy", null)
                      }
                  },
                  AnimalVaccinations = new List<AnimalVaccination>()
                  {
                      new AnimalVaccination
                   {
                       AnimalId = 1,
                       VaccinationId = 1,
                       Vaccination = new Vaccination
                       {
                         Id = 1,
                         Type = "Common",
                         Name = "Daramoon"
                       },
                       VaccinationDate = DateTime.ParseExact("12/08/2019", "dd/MM/yyyy", null),
                       NextVaccinationDate = DateTime.ParseExact("12/08/2020", "dd/MM/yyyy", null)
                   },
                   new AnimalVaccination
                   {
                       AnimalId = 1,
                       VaccinationId = 2,
                       Vaccination = new Vaccination
                       {
                        Id = 2,
                        Type = "Common",
                        Name = "Vangard"
                       },
                       VaccinationDate = DateTime.ParseExact("12/08/2019", "dd/MM/yyyy", null),
                       NextVaccinationDate = DateTime.ParseExact("12/07/2020", "dd/MM/yyyy", null)
                   }
                  },
                  AnimalAttitudes = new List<AnimalAttitudeTo>()
                  {
                      new AnimalAttitudeTo
                   {
                       AnimalId = 1,
                       AttitudeId = 1,
                       AttitudeTo = new AttitudeTo
                       {
                        Id = 1,
                        Name = "Childrens"
                       },
                       Mark = 3
                   },
                   new AnimalAttitudeTo
                   {
                       AnimalId = 1,
                       AttitudeId = 2,
                       AttitudeTo = new AttitudeTo
                       {
                        Id = 2,
                        Name = "Cats"
                       },
                       Mark = 3
                   }
                  },
                  AnimalDefects = new List<AnimalDefects>()
                  {
                     new AnimalDefects
                     {
                         AnimalId = 1,
                         DefectsId = 1,
                         Defect = new Defect
                         {
                            Id = 1,
                            Type = "Front pow disability"
                         }
                     }
                  },
                  AnimalKeepings = new List<AnimalKeeping>()
                  {
                      new AnimalKeeping
                      {
                        AnimalId = 1,
                        KeepingId = 1,
                        Keeping =  new Keeping
                        {
                          Id = 1,
                          Name = "Flat"
                        }
                      },
                      new AnimalKeeping
                      {
                          AnimalId = 1,
                          KeepingId = 3,
                          Keeping = new Keeping
                          {
                            Id = 3,
                            Name = "Wintering only in the house"
                          }
                      }
                  },
                  AnimalProcessings = new List<AnimalProcessing>(){
                      new AnimalProcessing
                      {
                          AnimalId = 1,
                          ProcessingId = 1,
                          Processing = new Processing
                          {
                              Id = 1,
                              Type = "Anti-flea and anti-ticks processing"
                          },
                          IsRepeat = true,
                          ProcessingDate = DateTime.ParseExact("12/08/2019", "dd/MM/yyyy", null),
                          NextProcessingDate = DateTime.ParseExact("14/03/2020", "dd/MM/yyyy", null)
                      },
                      new AnimalProcessing
                      {
                          AnimalId = 1,
                          ProcessingId = 2,
                          Processing = new Processing
                          {
                              Id = 2,
                              Type = "Anti-worms processing"
                          },
                          IsRepeat = true,
                          ProcessingDate = DateTime.ParseExact("12/02/2019", "dd/MM/yyyy", null),
                          NextProcessingDate = DateTime.ParseExact("12/03/2020", "dd/MM/yyyy", null)
                      }
                  },
                  AnimalNeeds = new List<AnimalNeeds>()
                  {
                      new AnimalNeeds
                      {
                          AnimalId = 1,
                          NeedsId = 3,
                          Needs = new Needs
                          {
                              Id = 3,
                              Name = "Need for a suitable diet"
                          }
                      },
                      new AnimalNeeds
                      {
                          AnimalId = 1,
                          NeedsId = 2,
                          Needs = new Needs
                          {
                              Id = 2,
                              Name = "Need to be housed apart from other animals"
                          },
                      }
                  },
                  AdoptOrders = new List<AdoptOrder>()
                  {
                      new AdoptOrder
                      {
                          Id = 1,
                          AnimalId = 1,
                          UserId = "2",
                          ClosingDate = DateTime.ParseExact("25/07/2019", "dd/MM/yyyy", null),
                          EndingDate = DateTime.ParseExact("05/08/2019", "dd/MM/yyyy", null),
                          UserMotivation = "i want to adopt this pet, because i have kebab cafe at the city center",
                          AdminComment = "Declined because your cause is criminal",
                          Status = Domain.Enums.OrderStatus.Approved
                      },
                      new AdoptOrder
                      {
                          Id = 2,
                          AnimalId = 1,
                          UserId = "1",
                          ClosingDate = DateTime.ParseExact("18/10/2019", "dd/MM/yyyy", null),
                          UserMotivation = "i want to adopt this pet, because i love pets, and want to help them",
                          Status = Domain.Enums.OrderStatus.Declined
                      }
                  },
                  Images = new List<Image>()
                  {
                      new Image
                      {
                          Id = 2,
                          AnimalId = 1,
                      },
                      new Image
                      {
                          Id = 3,
                          AnimalId = 1,
                      }
                  }
              }
        };
    }
}
