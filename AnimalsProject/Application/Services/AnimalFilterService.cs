using Application.Interfaces;
using Application.Queries;
using Domain.Models;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Application.Services
{
    public class AnimalFilterService : IFilterService<Animal, AnimalQuery>
    {
        private readonly IConfiguration _configuration;

        public AnimalFilterService(IConfiguration configuration)
        {
            _configuration = configuration;
        }
        public IQueryable<Animal> AddAllFiltersQuery(AnimalQuery filter, IQueryable<Animal> queryable)
        {
            return AddDisabledsFiltersQuery(filter.IsDisabled,
                                           AddIsNewFiltersQuery(filter.IsNew,
                                           AddCategoryFiltersQuery(filter.Category,
                                           AddGenderFiltersQuery(filter.Gender,
                                           AddDateOfBirthsFiltersQuery(filter.DateOfBirth,
                                           AddWeightFiltersQuery(filter.Weight, queryable))))));
        }

        public IQueryable<Animal> AddWeightFiltersQuery(string weight, IQueryable<Animal> queryable)
        {
            if (!string.IsNullOrWhiteSpace(weight))
            {
                List<Animal> query = new List<Animal>();
                var weights = weight.ToLower().Split(',').ToHashSet();
                foreach (var item in weights)
                {
                    switch (item)
                    {
                        case "small":
                            query.AddRange(queryable
                            .Where(x => int.Parse(_configuration["Weight:WeightMinSmall"]) <= x.Weight
                            && int.Parse(_configuration["Weight:WeightMaxSmall"]) > x.Weight));
                            break;
                        case "medium":
                            query.AddRange(queryable
                            .Where(x => int.Parse(_configuration["Weight:WeightMinMedium"]) <= x.Weight
                            && int.Parse(_configuration["Weight:WeightMaxMedium"]) > x.Weight));
                            break;
                        case "large":
                            query.AddRange(queryable
                            .Where(x => int.Parse(_configuration["Weight:WeightMinLarge"]) <= x.Weight
                            && int.Parse(_configuration["Weight:WeightMaxLarge"]) >= x.Weight));
                            break;
                    }
                }
                return query.AsQueryable();
            }
            return queryable;
        }
        public IQueryable<Animal> AddDateOfBirthsFiltersQuery(string dateOfBirths, IQueryable<Animal> queryable)
        {
            if (!string.IsNullOrWhiteSpace(dateOfBirths))
            {
                List<Animal> query = new List<Animal>();

                var datesOfBirths = dateOfBirths.ToLower().Split(',').ToHashSet();
                foreach (var item in datesOfBirths)
                {

                    switch (item)
                    {
                        case "baby":
                            query.AddRange(queryable
                           .Where(x => DateTime.Now.Year - x.DateOfBirth.Year - (DateTime.Now.DayOfYear > x.DateOfBirth.DayOfYear ? 0 : 1) >= int.Parse(_configuration["DateOfBirth:DateOfBirthBabyMin"])
                           && DateTime.Now.Year - x.DateOfBirth.Year - (DateTime.Now.DayOfYear > x.DateOfBirth.DayOfYear ? 0 : 1) < int.Parse(_configuration["DateOfBirth:DateOfBirthBabyMax"])));
                            break;
                        case "young":
                            query.AddRange(queryable
                            .Where(x => DateTime.Now.Year - x.DateOfBirth.Year - (DateTime.Now.DayOfYear > x.DateOfBirth.DayOfYear ? 0 : 1) >= int.Parse(_configuration["DateOfBirth:DateOfBirthYoungMin"])
                            && DateTime.Now.Year - x.DateOfBirth.Year - (DateTime.Now.DayOfYear > x.DateOfBirth.DayOfYear ? 0 : 1) < int.Parse(_configuration["DateOfBirth:DateOfBirthYoungMax"])));
                            break;
                        case "middle":
                            query.AddRange(queryable
                            .Where(x => DateTime.Now.Year - x.DateOfBirth.Year - (DateTime.Now.DayOfYear > x.DateOfBirth.DayOfYear ? 0 : 1) >= int.Parse(_configuration["DateOfBirth:DateOfBirthMiddleMin"])
                            && DateTime.Now.Year - x.DateOfBirth.Year - (DateTime.Now.DayOfYear > x.DateOfBirth.DayOfYear ? 0 : 1) < int.Parse(_configuration["DateOfBirth:DateOfBirthMiddleMax"])));
                            break;
                        case "old":
                            query.AddRange(queryable
                            .Where(x => DateTime.Now.Year - x.DateOfBirth.Year - (DateTime.Now.DayOfYear > x.DateOfBirth.DayOfYear ? 0 : 1) >= int.Parse(_configuration["DateOfBirth:DateOfBirthOldMin"])
                            && DateTime.Now.Year - x.DateOfBirth.Year - (DateTime.Now.DayOfYear > x.DateOfBirth.DayOfYear ? 0 : 1) < int.Parse(_configuration["DateOfBirth:DateOfBirthOldMax"])));
                            break;
                    }
                }
                return query.AsQueryable();
            }
            return queryable;
        }
        public IQueryable<Animal> AddCategoryFiltersQuery(string category, IQueryable<Animal> queryable)
        {
            if (!string.IsNullOrWhiteSpace(category))
            {
                var categories = category.ToLower().Split(',').ToHashSet();
                List<Animal> query = new List<Animal>();
                foreach (var item in categories)
                {
                    switch (item)
                    {
                        case "cats":
                            query.AddRange(queryable.Where(x => x.Category.Name == "Cat"));
                            break;
                        case "dogs":
                            query.AddRange(queryable.Where(x => x.Category.Name == "Dog"));
                            break;
                        case "others":
                            query.AddRange(queryable.Where(x => x.Category.Name == "Others"));
                            break;
                    }
                }
                return query.AsQueryable();
            }
            return queryable;
        }
        public IQueryable<Animal> AddDisabledsFiltersQuery(string disabled, IQueryable<Animal> queryable)
        {
            if (!string.IsNullOrWhiteSpace(disabled))
            {
                var disableds = disabled.ToLower().Split(',').ToHashSet();
                List<Animal> query = new List<Animal>();
                foreach (var item in disableds)
                {
                    switch (item)
                    {
                        case "true":
                            query.AddRange(queryable.Where(x => x.AnimalDefects.Count > 0));
                            break;
                        case "false":
                            query.AddRange(queryable.Where(x => x.AnimalDefects.Count == 0));
                            break;
                    }
                }
                return query.AsQueryable();
            }
            return queryable;
        }
        public IQueryable<Animal> AddGenderFiltersQuery(string gender, IQueryable<Animal> queryable)
        {
            if (!string.IsNullOrWhiteSpace(gender))
            {
                var genders = gender.ToLower().Split(',').ToHashSet();
                List<Animal> query = new List<Animal>();
                foreach (var item in genders)
                {
                    switch (item)
                    {
                        case "male":
                            query.AddRange(queryable.Where(x => (int)x.Gender == 0));
                            break;
                        case "female":
                            query.AddRange(queryable.Where(x => (int)x.Gender == 1));
                            break;
                    }
                }
                return query.AsQueryable();
            }
            return queryable;
        }
        public IQueryable<Animal> AddIsNewFiltersQuery(string isNew, IQueryable<Animal> queryable)
        {
            if (!string.IsNullOrWhiteSpace(isNew))
            {
                var isNews = isNew.ToLower().Split(',').ToHashSet();
                List<Animal> query = new List<Animal>();
                foreach (var item in isNews)
                {
                    switch (item)
                    {
                        case "true":
                            query.AddRange(queryable.Where(x => x.IsNew));
                            break;
                        case "false":
                            query.AddRange(queryable.Where(x => !x.IsNew));
                            break;
                    }
                }

                return query.AsQueryable();
            }
            return queryable;
        }
    }
}
