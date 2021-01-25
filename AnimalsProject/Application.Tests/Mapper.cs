using Application.Mapper;
using AutoMapper;

namespace Application.Tests
{
    public static class Mapper
    {
        public static AutoMapper.Mapper GetMapper
        {
            get
            {
                var configuration = new MapperConfiguration(cfg => cfg.AddProfile(new AnimalMapper()));
                return new AutoMapper.Mapper(configuration);
            }
        }
    }
}
