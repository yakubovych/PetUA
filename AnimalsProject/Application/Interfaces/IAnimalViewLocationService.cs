using Application.ViewLocation;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Application.Interfaces
{
    public interface IAnimalViewLocationService
    {
        Task UpdateViewLocationAsync(long id);
        IEnumerable<AnimalViewLocationDto> GetViewLocationByAnimal(long id);

    }
}
