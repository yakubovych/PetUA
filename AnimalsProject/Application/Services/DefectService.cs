using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Application.DTO.Animal;
using Application.DTO.Defect;
using Application.Interfaces;
using Persistance.Interfaces;
using Domain.Models;

namespace Application.Services
{
    public class DefectService : IDefectService
    {
        private readonly IRepository<Defect> _defectRepository;
        private readonly IRepository<AnimalDefects> _animalDefectRepository;
        private readonly IRepository<Animal> _animalRepository;
        public DefectService(IRepository<Defect> defectRepository,
            IRepository<AnimalDefects> animalDefectRepository,
            IRepository<Animal> animalRepository)
        {
            _defectRepository = defectRepository;
            _animalDefectRepository = animalDefectRepository;
            _animalRepository = animalRepository;
        }
        public async Task<DefectForCreationDto> CreateDefect(DefectForCreationDto defect)
        {
            await _defectRepository.AddAsync(new Defect()
            {
                Type = defect.Type,
            });
            await _defectRepository.SaveAsync();
            return defect;
        }

        public async Task DeleteDefect(long defectId)
        {
            var tempDefect = await _defectRepository.GetByIdAsync(defectId);
            await _defectRepository.Remove(tempDefect);
            await _defectRepository.SaveAsync();
        }

        public async Task DeleteDefectFromAnimal(long animalId, long defectId)
        {
            var tempAnimal = await _animalRepository.GetByIdAsync(animalId);
            var tempDefect = await _defectRepository.GetByIdAsync(defectId);
            var animalDefect = new AnimalDefects()
            {
                AnimalId = animalId,
                DefectsId = defectId,
                Defect = tempDefect,
                Animal = tempAnimal
            };
            await _animalDefectRepository.Remove(animalDefect);
            await _animalDefectRepository.SaveAsync();
        }

        public async Task<IEnumerable<DefectDto>> GetAllDefects()
        {
            var tempDefects = await _defectRepository.GetAllAsync();
            return tempDefects.Select(d => new DefectDto()
            {
                Id = d.Id,
                Type = d.Type
            }).OrderBy(x => x.Type);
        }

        public async Task AddDefectToAnimal(long animalId, long defectId)
        {
            var tempAnimal = await _animalRepository.GetByIdAsync(animalId);
            var defect = await _defectRepository.GetByIdAsync(defectId);
            await _animalDefectRepository.AddAsync(new AnimalDefects()
            {
                AnimalId = animalId,
                DefectsId = defectId,
                Defect = defect,
                Animal = tempAnimal
            });
            await _animalDefectRepository.SaveAsync();
        }

        public async Task AddDefectsToAnimal(long animalId, IEnumerable<DefectDto> defects)
        {
            foreach (var defect in defects)
            {
                var tempAnimal = await _animalRepository.GetByIdAsync(animalId);
                var tempDefect = await _defectRepository.GetByIdAsync(defect.Id);
                await _animalDefectRepository.AddAsync(new AnimalDefects()
                {
                    AnimalId = animalId,
                    DefectsId = defect.Id,
                    Defect = tempDefect,
                    Animal = tempAnimal
                });
                await _animalDefectRepository.SaveAsync();
            }
        }

        public IEnumerable<DefectDto> GetAllDefectsByAnimal(long animalId)
        {
            var animalDefects = _animalDefectRepository.GetAllQueryable();
            var defects = _defectRepository.GetAllQueryable();
            var tempDefects = (from d in defects
                               join a in animalDefects on d.Id equals a.DefectsId
                               where a.AnimalId == animalId
                               select new
                               {
                                   d.Id,
                                   d.Type
                               });
            return tempDefects.Select(d => new DefectDto()
            {
                Id = d.Id,
                Type = d.Type
            }).OrderBy(x => x.Type).ToList();
        }

        public async Task<DefectDto> GetDefectById(long id)
        {
            var defect = await _defectRepository.GetByIdAsync(id);
            return new DefectDto()
            {
                Id = defect.Id,
                Type = defect.Type
            };
        }

        public async Task UpdateDefect(DefectDto defect)
        {
            var tempDefect = await _defectRepository.GetByIdAsync(defect.Id);
            tempDefect.Type = defect.Type;
            _defectRepository.Update(tempDefect);
            await _defectRepository.SaveAsync();
        }

        public async Task CreateAnimalWithDefects(AnimalForCreationDto animal, Animal model)
        {
            if (animal.Defects == null)
                animal.Defects = new HashSet<DefectDto>();

            _animalDefectRepository.TryCreateManyToMany(animal.Defects
               .Select(x => new AnimalDefects
               {
                   DefectsId = x.Id,
                   AnimalId = model.Id,
               }));
            await _animalDefectRepository.SaveAsync();
        }

        public async Task UpdateAnimalWithDefects(AnimalDto animal, Animal model)
        {
            if (animal.Defects == null)
                animal.Defects = new HashSet<DefectDto>();

            _animalDefectRepository.TryUpdateManyToMany(model.AnimalDefects, animal.Defects
                .Select(x => new AnimalDefects
                {
                    DefectsId = x.Id,
                    AnimalId = animal.Id,
                }), x => x.DefectsId);
            await _animalDefectRepository.SaveAsync();
        }
    }
}
