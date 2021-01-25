using Application.DTO.ViewLocation;
using Application.Exceptions;
using Application.Interfaces;
using Application.ViewLocation;
using AutoMapper;
using Domain.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.Features;
using Newtonsoft.Json;
using Persistance.Interfaces;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;

namespace Application.Services
{
    public class AnimalViewLocationService : IAnimalViewLocationService
    {
        private readonly IRepository<AnimalViewLocation> _repository;
        private readonly IRepository<Animal> _animalRepository;
        private readonly IHttpContextAccessor _httpContextAccessor;
        private readonly IMapper _mapper;

        public AnimalViewLocationService(IRepository<AnimalViewLocation> repository, IRepository<Animal> animalRepository,
                                        IHttpContextAccessor httpContextAccessor, IMapper mapper)
        {
            _repository = repository;
            _animalRepository = animalRepository;
            _httpContextAccessor = httpContextAccessor;
            _mapper = mapper;

        }
        public async Task UpdateViewLocationAsync(long id)
        {
            var animal = await _animalRepository.GetByIdAsync(id);
            if (animal == null)
            {
                throw new ObjectNotFoundException("Animal by id: {id} not found");
            }
            var remoteIpAddress =  _httpContextAccessor.HttpContext.Features.Get<IHttpConnectionFeature>()?.RemoteIpAddress?.ToString();
            var httpClient = new HttpClient();
            var response = await httpClient.GetAsync($@"https://api.ipgeolocation.io/ipgeo?apiKey=a56337791c3840d68199af3d463a662d&ip={remoteIpAddress}&fields=country_name");
            
            string responseBody = await response.Content.ReadAsStringAsync();
            var location = JsonConvert.DeserializeObject<Location>(responseBody);
            var animalViewLocation = _repository.Find(x => x.AnimalId == animal.Id && x.Location == location.Country).FirstOrDefault();

            if (animalViewLocation != null)
            {
                ++animalViewLocation.Count;
                _repository.Update(animalViewLocation);
                await _repository.SaveAsync();
            }
            else
            {          
                 await _repository.AddAsync(new AnimalViewLocation { Location = location.Country, AnimalId = animal.Id, Count = 1 });           
            }
        }
        public IEnumerable<AnimalViewLocationDto> GetViewLocationByAnimal(long id)
        {
            var animalViewLocations = _repository.Find(x => x.AnimalId == id).Select(x => _mapper.Map<AnimalViewLocationDto>(x)).ToList();
            return animalViewLocations;
        }

    }
    
}
