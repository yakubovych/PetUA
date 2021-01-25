using AutoMapper;
using Domain.Models;
using System.Linq;
using System;
using Application.DTO.User;
using Application.Filters;
using Application.Queries;
using Application.DTO.Article;
using Application.DTO.Animal;
using Application.DTO.VaccinationDtos;
using Application.DTO.Defect;
using Application.DTO.BookOrder;
using Application.DTO.Tag;
using Application.DTO.AdoptOrder;
using Application.DTO.Attitude;
using Application.DTO.Processing;
using Application.DTO.Needs;
using Application.DTO.Keeping;
using Application.DTO.Description;
using Application.DTO.Order;
using Application.DTO.Address;
using Application.DTO.Food;
using Application.DTO.Category;
using Application.DTO.Breed;
using Application.DTO.Help;
using Application.DTO.AdoptBookRequest;
using Application.ViewLocation;

namespace Application.Mapper
{
    public class AnimalMapper : Profile
    {
        public AnimalMapper()
        {
            CreateMap<Animal, AnimalIncludeValuesDto>()
                .ForMember(an => an.Food, a => a.MapFrom(c => c.Food))
                .ForMember(an => an.Category, a => a.MapFrom(c => c.Category))
                .ForMember(an => an.Description, a => a.MapFrom(d => d.Description))
                .ForMember(an => an.Breeds, a => a.MapFrom(c => c.Breed))
                .ForMember(an => an.Address, a => a.MapFrom(c => c.Address))
                .ForMember(an => an.Status, a=> a.MapFrom(a => a.Status))
                .ForMember(an => an.Gender, a => a.MapFrom(c => c.Gender.ToString()))
                .ForMember(an => an.Sterialization, a => a.MapFrom(c => c.Sterialization.ToString()))
                .ForMember(an => an.Status, a => a.MapFrom(c => c.Status.ToString()))
                .ForMember(an => an.Needs, a => a.MapFrom(c => c.AnimalNeeds.Select(x => x.Needs)))
                .ForMember(an => an.Attitudes, a => a.MapFrom(c => c.AnimalAttitudes.Select(x => new AttitudeToDto(x.AttitudeTo, x.Mark))))
                .ForMember(an => an.Defects, a => a.MapFrom(c => c.AnimalDefects.Select(x => x.Defect)))
                .ForMember(an => an.Keepings, a => a.MapFrom(c => c.AnimalKeepings.Select(x => x.Keeping)))
                .ForMember(an => an.Processings, a => a.MapFrom(c => c.AnimalProcessings.Select(x => new ProcessingDto(x.Processing
                                                                                , x.ProcessingDate, x.NextProcessingDate))))
                .ForMember(an => an.Vaccinations, a => a.MapFrom(c => c.AnimalVaccinations.Select(x => new VaccinationFullDto(x.Vaccination
                                                                                , x.VaccinationDate, x.NextVaccinationDate)))).ReverseMap();

            CreateMap<Animal, AnimalDto>()
               .ForMember(an => an.Needs, a => a.MapFrom(c => c.AnimalNeeds.Select(x => x.Needs)))
               .ForMember(an => an.Attitudes, a => a.MapFrom(c => c.AnimalAttitudes.Select(x => new AttitudeToDto(x.AttitudeTo, x.Mark))))
               .ForMember(an => an.Defects, a => a.MapFrom(c => c.AnimalDefects.Select(x => x.Defect)))
               .ForMember(an => an.Breed, a => a.MapFrom(c => c.Breed))
               .ForMember(an => an.Description, a => a.MapFrom(d => d.Description))
               .ForMember(an => an.Keepings, a => a.MapFrom(c => c.AnimalKeepings.Select(x => x.Keeping)))
               .ForMember(an => an.Processings, a => a.MapFrom(c => c.AnimalProcessings.Select(x => new ProcessingDto(x.Processing
                                                                               , x.ProcessingDate, x.NextProcessingDate))))
               .ForMember(an => an.Vaccinations, a => a.MapFrom(c => c.AnimalVaccinations.Select(x => new VaccinationFullDto(x.Vaccination
                                                                                , x.VaccinationDate, x.NextVaccinationDate))));
            CreateMap<AnimalLocationHistory, AnimalLocationHistoryDto>()
                .ForMember(an => an.Address, a => a.MapFrom(c => c.Address))
                .ReverseMap();

            CreateMap<AnimalDto, Animal>()
                .ForMember(an => an.Images, a => a.Ignore())
                .ForMember(an => an.Breed, a => a.Ignore());

            CreateMap<AnimalForCreationDto, Animal>()
                .ForMember(an => an.Images, a => a.Ignore())
                .ForMember(an => an.Description, a => a.Ignore())
                .ForMember(an => an.Breed, a => a.Ignore())
                .ForMember(an => an.Videos, a => a.Ignore());

            CreateMap<Animal, AnimalApprovedDto>();

            CreateMap<AnimalApprovedDto, Animal>()
                .ForMember(an => an.Images, a => a.Ignore());
            CreateMap<AnimalStatisticDto, Animal>().ReverseMap();
            CreateMap<ArticleStatisticDto, Article>().ReverseMap();


            CreateMap<NeedsDto, Needs>();
            CreateMap<Needs, NeedsDto>();

            CreateMap<KeepingDto, Keeping>();
            CreateMap<Keeping, KeepingDto>();

            CreateMap<Vaccination, VaccinationFullDto>();
            CreateMap<VaccinationFullDto, Vaccination>();

            CreateMap<Vaccination, VaccinationFullForCreationDto>();
            CreateMap<VaccinationFullForCreationDto, Vaccination>();

            CreateMap<Vaccination, VaccinationDto>();
            CreateMap<VaccinationDto, Vaccination>();

            CreateMap<Vaccination, VaccinationForCreationDto>();
            CreateMap<VaccinationForCreationDto, Vaccination>();

            CreateMap<AttitudeTo, AttitudeToDto>();
            CreateMap<AttitudeToDto, AttitudeTo>();

            CreateMap<ProcessingDto, Processing>();
            CreateMap<Processing, ProcessingDto>();

            CreateMap<DefectDto, Defect>();
            CreateMap<Defect, DefectDto>();

            CreateMap<DefectForCreationDto, Defect>();
            CreateMap<Defect, DefectForCreationDto>();

            CreateMap<DescriptionDto, AnimalDescription>();
            CreateMap<AnimalDescription, DescriptionDto>();

            CreateMap<DescriptionForCreationDto, AnimalDescription>();
            CreateMap<AnimalDescription, DescriptionForCreationDto>();

            CreateMap<BreedDto, Breed>()
                .ForMember(br => br.BreedEnglish, b => b.MapFrom(x => x.LanguageEn))
                .ForMember(br => br.BreedUkrainian, b => b.MapFrom(x => x.LanguageUa));

            CreateMap<Breed, BreedDto>()
                .ForMember(br => br.LanguageEn, b => b.MapFrom(x => x.BreedEnglish))
                .ForMember(br => br.LanguageUa, b => b.MapFrom(x => x.BreedUkrainian));

            CreateMap<BreedForCreationDto, Breed>()
                .ForMember(br => br.BreedEnglish, b => b.MapFrom(x => x.LanguageEn))
                .ForMember(br => br.BreedUkrainian, b => b.MapFrom(x => x.LanguageUa));

            CreateMap<Breed, BreedForCreationDto>()
                .ForMember(br => br.LanguageEn, b => b.MapFrom(x => x.BreedEnglish))
                .ForMember(br => br.LanguageUa, b => b.MapFrom(x => x.BreedUkrainian));

            CreateMap<ImageDto, Image>().ReverseMap();
            CreateMap<ArticleImageDto, ArticleImage>().ReverseMap();

            CreateMap<AnimalVideoForCreationDto, AnimalVideo>();
            CreateMap<AnimalVideoDto, AnimalVideo>().ReverseMap();

            CreateMap<AdoptOrder, AdoptBookRequest>()
                .ForMember(a => a.Type, a => a.MapFrom(x => new string("Adopt")))
                .ForMember(a => a.PetName, a => a.MapFrom(x => x.Animal.Name));
            CreateMap<BookOrder, AdoptBookRequest>()
                .ForMember(a => a.Type, a => a.MapFrom(x => new string("Book")))
                .ForMember(a => a.PetName, a => a.MapFrom(x => x.Animal.Name));

            CreateMap<AdoptOrder, AdoptOrderForApproveDto>().ReverseMap();
            CreateMap<AdoptOrder, AdoptOrderForDeclineDto>().ReverseMap();
            CreateMap<BookOrder, BookOrderForApproveDto>().ReverseMap();
            CreateMap<BookOrder, BookOrderForDeclineDto>().ReverseMap();

            CreateMap<AdoptOrder, AdoptOrderDto>().ForMember(b => b.Status, b => b.MapFrom(s => s.Status.ToString())).ReverseMap();
            CreateMap<BookOrder, BookOrderDto>().ForMember(b => b.Status,b => b.MapFrom(s => s.Status.ToString()))
                                                .ForMember(b => b.UserEmail, b => b.MapFrom( u => u.CreatedBy)).ReverseMap();
            CreateMap<OrderForCreationDto, AdoptOrder>();
            CreateMap<OrderForCreationDto, BookOrder>();

            CreateMap<AddressDto, Address>().ReverseMap();
            CreateMap<CategoryDto, Category>().ReverseMap();
            CreateMap<FoodDto, Food>().ReverseMap();
     
            CreateMap<AnimalFilter, AnimalQuery>().ReverseMap();
            CreateMap<AnimalPaginationFilter, AnimalPaginationQuery>().ReverseMap();

            CreateMap<ArticleFilter, ArticleQuery>().ReverseMap();
            CreateMap<ArticlePaginationFilter, ArticlePaginationQuery>().ReverseMap();

            CreateMap<UserRegistrationDto, User>().ReverseMap();
            CreateMap<UserDto, User>().ReverseMap();
            CreateMap<UserIncludeValuesDto, User>().ForMember(an => an.Address, a => a.MapFrom(x => x.Address))
                                                   .ForMember(an => an.AdoptOrders, a => a.MapFrom(x => x.AdoptOrders))
                                                   .ForMember(an => an.BookOrders, a => a.MapFrom(x => x.BookOrders))
                                                   .ForMember(an => an.Articles, a => a.MapFrom(x => x.Articles))
                                                   .ForMember(an => an.UserHelps, a => a.MapFrom(x => x.Helps)).ReverseMap();
            CreateMap<HelpDto, Help>().ReverseMap();
            CreateMap<UserHelpInDto, UserHelp>().ReverseMap();
            CreateMap<UserHelp, UserHelpOutDto>().ForMember(an => an.User, a => a.MapFrom(x => x.User)).ReverseMap();

            CreateMap<UserFilters, UserQuery>().ReverseMap();

            CreateMap<Article, ArticleDto>()
                .ForMember(an => an.Tags, a => a.MapFrom(c => c.ArticleTags.Select(x => x.Tag)))
                .ForMember(an => an.UserEmall, a => a.MapFrom(c => c.CreatedBy));

            CreateMap<ArticleDto, Article>()
                .ForMember(an => an.Images, a => a.Ignore());

            CreateMap<ArticleForCreationDto, Article>();
            CreateMap<ArticleForUpdateDto, Article>()
                .ForMember(an => an.Images, a => a.Ignore());

            CreateMap<Tag, TagDto>().ReverseMap();
            CreateMap<Tag, TagForCreateDto>().ReverseMap();

            CreateMap<ArticleImageForCreationDto, ArticleImage>();
            CreateMap<HelpDto, Help>().ReverseMap();
            CreateMap<UserHelpInDto, UserHelp>().ReverseMap();
            CreateMap<UserHelp, UserHelpOutDto>().ForMember(a => a.User, a => a.MapFrom(x => x.User)).ReverseMap();

            CreateMap<AnimalViewLocation, AnimalViewLocationDto>().ReverseMap();

        }
    }
}
