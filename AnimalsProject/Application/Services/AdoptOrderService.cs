using Application.DTO.AdoptOrder;
using Application.Interfaces;
using AutoMapper;
using Domain.Enums;
using Persistance.Interfaces;
using Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Application.Exceptions;

namespace Application.Services
{
    public class AdoptOrderService : IAdoptOrderService
    {
        private readonly IRepository<AdoptOrder> _adoptOrderRepository;
        private readonly IRepository<Animal> _animalRepository;
        private readonly IMapper _mapper;

        public AdoptOrderService(IRepository<AdoptOrder> adoptOrderRepository,
                                IRepository<Animal> animalRepository,
                                IMapper mapper)
        {
            _adoptOrderRepository = adoptOrderRepository;
            _animalRepository = animalRepository;
            _mapper = mapper;
        }

        public async Task ApproveAdoptOrder(AdoptOrderForApproveDto order)
        {
            var adoptOrder = _adoptOrderRepository.Entities.FirstOrDefault(x => x.Id == order.Id);
            var animal = _animalRepository.Entities.FirstOrDefault(x => x.Id == adoptOrder.AnimalId);
            if (AnimalStatus.None != animal.Status)
            {
                throw new ObjectException(nameof(adoptOrder.AnimalId), "animal is booked or adopted");
            }

            if (adoptOrder == null || adoptOrder.Status != OrderStatus.Pending)
            {
                throw new ObjectNotFoundException("Threre isn't pending adopt order");
            }

            animal.Status = AnimalStatus.Booked;
            _animalRepository.Update(animal);

            _mapper.Map(order, adoptOrder);
            adoptOrder.Status = OrderStatus.Approved;
            adoptOrder.ClosingDate = DateTime.Now;
            _adoptOrderRepository.Update(adoptOrder);
            await _adoptOrderRepository.SaveAsync();
        }

        public async Task ApproveFinalyAdoptOrder(AdoptOrderForApproveFinalyDto order)
        {
            var adoptOrder = _adoptOrderRepository.Entities.FirstOrDefault(x => x.Id == order.Id);
            var animal = _animalRepository.Entities.FirstOrDefault(x => x.Id == adoptOrder.AnimalId);
            if (AnimalStatus.None != animal.Status && (animal.Status == AnimalStatus.Booked && adoptOrder.Status != OrderStatus.Approved))
            {
                throw new ObjectException(nameof(adoptOrder.AnimalId), "animal is booked or adopted");
            }

            if (adoptOrder == null || adoptOrder.Status == OrderStatus.Declined)
            {
                throw new ObjectNotFoundException("You can not approve this order");
            }

            animal.Status = AnimalStatus.Adopted;
            _animalRepository.Update(animal);


            adoptOrder.Status = OrderStatus.Approved;
            adoptOrder.ClosingDate = DateTime.Now;
            _adoptOrderRepository.Update(adoptOrder);
            await _adoptOrderRepository.SaveAsync();
        }

        public async Task DeclineAdoptOrder(AdoptOrderForDeclineDto order)
        {
            var adoptOrder = _adoptOrderRepository.Entities.FirstOrDefault(x => x.Id == order.Id);
            var animal = _animalRepository.Entities.FirstOrDefault(x => x.Id == adoptOrder.AnimalId);
            if (OrderStatus.Declined == adoptOrder.Status)
            {
                throw new ObjectException(nameof(adoptOrder.AnimalId), "animal is declined already");
            }

            if (adoptOrder == null || adoptOrder.Status == OrderStatus.Declined)
            {
                throw new ObjectNotFoundException("Threre isn't adopt order or it's declined already");
            }

            animal.Status = AnimalStatus.None;
            _animalRepository.Update(animal);

            _mapper.Map(order, adoptOrder);
            adoptOrder.Status = OrderStatus.Declined;
            adoptOrder.ClosingDate = DateTime.Now;
            _adoptOrderRepository.Update(adoptOrder);
            await _adoptOrderRepository.SaveAsync();
        }

        public async Task<IEnumerable<AdoptOrderDto>> GetAllAdoptOrders()
        {
            var adoptOrders = await _adoptOrderRepository.GetAllAsync();
            var adoptOrderResult = adoptOrders.Select(x => _mapper.Map<AdoptOrderDto>(x));
            return adoptOrderResult;
        }

        public  IEnumerable<AdoptOrderDto> GetAllApprovedAdoptOrders()
        {
            var adoptOrders = _adoptOrderRepository.Find(x => x.Status == OrderStatus.Approved).Select(x => _mapper.Map<AdoptOrderDto>(x));
            return adoptOrders;

        }

        public IEnumerable<AdoptOrderDto> GetAllPendingAdoptOrders()
        {

            var adoptOrders = _adoptOrderRepository.Find(x => x.Status == OrderStatus.Pending).Select(x => _mapper.Map<AdoptOrderDto>(x));
            return adoptOrders;
        }

        public IEnumerable<AdoptOrderDto> GetAllAdoptOrdersByUserId(string id)
        {
            var adoptOrders = _adoptOrderRepository.Find(x => x.UserId == id).Select(x => _mapper.Map<AdoptOrderDto>(x));
            return adoptOrders;
        }

        public async Task<AdoptOrderDto> GetById(long id)
        {
            var adoptOrder = await _adoptOrderRepository.GetByIdAsync(id);
            var adoptOrderResult = _mapper.Map<AdoptOrderDto>(adoptOrder);
            return adoptOrderResult;
        }

        public async Task Delete(long id)
        {
            var adoptOrder = await _adoptOrderRepository.GetByIdAsync(id);
            if (adoptOrder == null)
            {
                throw new ArgumentNullException(nameof(id), "adoprOrder not found");
            }
            await _adoptOrderRepository.Remove(adoptOrder);
        }
    }
}
