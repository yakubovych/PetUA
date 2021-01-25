using Application.DTO.Processing;
using Application.DTO.Animal;
using Application.Interfaces;
using AutoMapper;
using Persistance.Interfaces;
using Domain.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System;
using Microsoft.Extensions.Configuration;

namespace Application.Services
{
    public class ProcessingService : IProcessingService
    {
        private readonly IRepository<Processing> _processingRepository;
        private readonly IRepository<AnimalProcessing> _animalProcessingRepository;
        private readonly IConfiguration _configuration;
        private readonly IMapper _mapper;
        public ProcessingService(IRepository<Processing> processingRepository, 
            IRepository<AnimalProcessing> animalProcessingRepository, IMapper mapper,
            IConfiguration configuration)
        {
            _mapper = mapper;
            _configuration = configuration;
            _processingRepository = processingRepository;
            _animalProcessingRepository = animalProcessingRepository;
        }

        public async Task CreateAnimalWithProcessing(AnimalForCreationDto animal, Animal model)
        {
            if (animal.Processings == null)
                animal.Processings = new HashSet<ProcessingDto>();

            _animalProcessingRepository.TryCreateManyToMany(animal.Processings
                .Select(x => new AnimalProcessing
                {
                    ProcessingId = x.Id,
                    AnimalId = model.Id,
                    ProcessingDate = x.ProcessingDate,
                    NextProcessingDate = x.IsRepeat ? GetNextProcessingDateForCreate(_processingRepository.Find(p => p.Id == x.Id).FirstOrDefault().Type
                    , x.ProcessingDate, x.NextProcessingDate) : DateTime.MinValue,
                    IsRepeat = x.IsRepeat
                }));
            await _animalProcessingRepository.SaveAsync();
        }
            
        public async Task<IEnumerable<ProcessingDto>> GetAll()
        {
            var processings = await _processingRepository.GetAllAsync();
            var processingsDto = processings.Select(a => _mapper.Map<ProcessingDto>(a));
            return processingsDto;
        }

        public async Task UpdateAnimalWithProcessing(AnimalDto animal, Animal model)
        {
            if (animal.Processings == null)
                animal.Processings = new HashSet<ProcessingDto>();

            _animalProcessingRepository.TryUpdateManyToMany(model.AnimalProcessings, animal.Processings
                .Select(x => new AnimalProcessing
                {
                    ProcessingId = x.Id,
                    AnimalId = animal.Id,
                    ProcessingDate = x.ProcessingDate,
                    NextProcessingDate = x.IsRepeat ? GetNextProcessingDateForUpdate(_processingRepository.Find(p => p.Id == x.Id).FirstOrDefault().Type
                    ,x.ProcessingDate) : DateTime.MinValue,
                    IsRepeat = x.IsRepeat
                }), x => x.ProcessingId, x => x.ProcessingDate, x => x.NextProcessingDate);
            await _animalProcessingRepository.SaveAsync();
        }

        private DateTime GetNextProcessingDateForCreate(string processingType, DateTime processingDate
                                                                    , DateTime nextProcessingDate)
        {
            DateTime newNextProcessingDate = new DateTime();
            
            if(processingType == "Anti-flea and anti-ticks processing")
            {
                newNextProcessingDate = processingDate;
                while (DateTime.Now > processingDate && DateTime.Now > newNextProcessingDate) {
                    newNextProcessingDate = newNextProcessingDate.AddDays(int.Parse(_configuration["Processing:NextAnti-FleaAndAnti-TicksProcessing"]));
                }
            }else if(processingType == "Anti-worms processing")
            {
                newNextProcessingDate = processingDate;
                while (DateTime.Now > processingDate && DateTime.Now > newNextProcessingDate)
                {
                    if (nextProcessingDate == DateTime.MinValue)
                    {
                        newNextProcessingDate = newNextProcessingDate.AddDays(int.Parse(_configuration["Processing:FirstNextAnti-WormProcessing"]));
                        continue;
                    }
                    newNextProcessingDate = newNextProcessingDate.AddDays(int.Parse(_configuration["Processing:NextAnti-WormProcessing"]));
                }
            }

            return newNextProcessingDate;
        }

        private DateTime GetNextProcessingDateForUpdate(string processingType, DateTime processingDate)
        {
            DateTime newNextProcessingDate = new DateTime();

            if (processingType == "Anti-flea and anti-ticks processing")
            {
                while (DateTime.Now > processingDate && DateTime.Now > newNextProcessingDate)
                {
                    newNextProcessingDate = processingDate.AddDays(int.Parse(_configuration["Processing:NextAnti-FleaAndAnti-TicksProcessing"]));
                }
            }
            else if (processingType == "Anti-worms processing")
            {
                bool firstProccesing = true;
                while (DateTime.Now > processingDate && DateTime.Now > newNextProcessingDate)
                {
                    if (firstProccesing)
                    {
                        newNextProcessingDate = processingDate.AddDays(int.Parse(_configuration["Processing:FirstNextAnti-WormProcessing"]));
                        firstProccesing = false;
                        continue;
                    }
                    newNextProcessingDate = processingDate.AddDays(int.Parse(_configuration["Processing:NextAnti-WormProcessing"]));
                }
            }

            return newNextProcessingDate;
        }
    }
}
