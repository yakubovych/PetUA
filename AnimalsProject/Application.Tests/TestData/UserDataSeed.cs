using Domain.Models;
using System.Collections.Generic;

namespace Application.Tests.TestData
{
    public static class UserDataSeed
    {
        public static List<User> Users = new List<User>()
        {
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
             PhoneNumber = "0974128341",
             Address = new Address { Id = 2, Name = "Lviv"},
             UserHelps = new List<UserHelp>(),
             BookOrders = new List<BookOrder>(),
             AdoptOrders = new List<AdoptOrder>(),
             Articles = new List<Article>()
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
                 PhoneNumber = "0974128342",
                 Address = new Address { Id = 3, Name = "Kyiv"},
                 UserHelps = new List<UserHelp>(),
                 BookOrders = new List<BookOrder>(),
                 AdoptOrders = new List<AdoptOrder>(),
                 Articles = new List<Article>()
             },
             new User
             {
                 Id = "3",
                 Email = "some@gmail.com",
                 NormalizedEmail = "SOME@GMAIL.COM",
                 EmailConfirmed = true,
                 UserName = "some@gmail.com",
                 NormalizedUserName = "SOME@GMAIL.COM",
                 FullName = "some user",
                 AddressId = 2,
                 PhoneNumber = "0974128333",
                 Address = new Address { Id = 2, Name = "Lviv"},
                 UserHelps = new List<UserHelp>() { new UserHelp { UserId = "3", HelpId = 3, Help = new Help { Id = 3, KindOfHelp = "Temporary placement" } },
                                                    new UserHelp { UserId = "3", HelpId = 4, Help = new Help { Id = 4, KindOfHelp = "Other" }, Comment = "SomeComment"}}, 
                 BookOrders = new List<BookOrder>(),
                 AdoptOrders = new List<AdoptOrder>(),
                 Articles = new List<Article>()
             }
        };
    }
}
