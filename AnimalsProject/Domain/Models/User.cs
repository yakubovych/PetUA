using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;

namespace Domain.Models
{
    public class User : IdentityUser
    {
        public User()
        {
            AdoptOrders = new List<AdoptOrder>();
            BookOrders = new List<BookOrder>();
            Articles = new List<Article>();
            UserHelps = new List<UserHelp>();
        }
        public string FullName { get; set; }

        public long AddressId { get; set; }

        public Address Address { get; set; }

        public string RefreshToken { get; set; }

        public DateTime LastActive { get; set; }

        public IList<AdoptOrder> AdoptOrders { get; set; }

        public IList<BookOrder> BookOrders { get; set; }

        public IList<Article> Articles { get; set; }

        public IList<UserHelp> UserHelps { get; set; }

        public override bool Equals(object obj)
        {
            return obj is User user &&
                   Id.Equals(user.Id) &&
                   FullName.Equals(user.FullName) &&
                   AddressId == user.AddressId &&
                   UserName.Equals(user.UserName) &&
                   Email.Equals(user.Email) &&
                   PhoneNumber.Equals(user.PhoneNumber) &&
                   LastActive == user.LastActive;
        }

        public override int GetHashCode()
        {
            HashCode hash = new HashCode();
            hash.Add(Id);
            hash.Add(FullName);
            hash.Add(UserName);
            hash.Add(Email);
            hash.Add(PhoneNumber);
            hash.Add(AddressId);
            hash.Add(LastActive);
            return hash.ToHashCode();
        }
    }
}