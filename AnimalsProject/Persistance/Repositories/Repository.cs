using Persistance.Data;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using Persistance.Interfaces;
using Persistance.Extension;
using Microsoft.EntityFrameworkCore.Storage;

namespace Persistance.Repositories
{
    public class Repository<TEntity> : IRepository<TEntity> where TEntity : class
    {
        protected readonly AnimalContext context;

        public Repository(AnimalContext context)
        {
            this.context = context;
        }
        public async Task AddAsync(TEntity entity)
        {
            context.Entry(entity).State = EntityState.Added;
            await SaveAsync();
        }

        public async Task AddRangeAsync(IEnumerable<TEntity> entities)
        {
            foreach (var item in entities)
            {
                await context.Set<TEntity>().AddAsync(item);
            }
            await SaveAsync();
        }

        public IEnumerable<TEntity> Find(Expression<Func<TEntity, bool>> predicate)
        {
            return context.Set<TEntity>().Where(predicate);
        }

        public IQueryable<TEntity> GetAllQueryable()
        {
            return context.Set<TEntity>().AsQueryable();
        }

        public async Task<IEnumerable<TEntity>> GetAllAsync()
        {
            return await context.Set<TEntity>().ToListAsync();
        }

        public async ValueTask<TEntity> GetByIdAsync(long id)
        {
            return await context.Set<TEntity>().FindAsync(id);
        }

        public async Task Remove(TEntity entity)
        {
            context.Set<TEntity>().Remove(entity);
            await SaveAsync();
        }

        public async Task RemoveRange(IEnumerable<TEntity> entities)
        {
            context.Set<TEntity>().RemoveRange(entities);
            await SaveAsync();
        }

        public async ValueTask<TEntity> SingleOrDefaultAsync(Expression<Func<TEntity, bool>> predicate)
        {
            return await context.Set<TEntity>().SingleOrDefaultAsync(predicate);
        }

        public async Task SaveAsync()
        {       
            await context.SaveChangesAsync();
        }

        public void Update(TEntity obj)
        {
            context.Update(obj);
        }

        public void TryUpdateManyToMany<TKey>(IEnumerable<TEntity> currentItems, IEnumerable<TEntity> newItems, Func<TEntity, TKey> funcKey)
        {
            context.TryUpdateManyToMany(currentItems, newItems, funcKey);
        }
        public void TryUpdateManyToMany<TKey1, TKey2>(IEnumerable<TEntity> currentItems, IEnumerable<TEntity> newItems, Func<TEntity, TKey1> funcKey1, Func<TEntity, TKey2> funcKey2)
        {
            context.TryUpdateManyToMany(currentItems, newItems, funcKey1, funcKey2);
        }
        public void TryUpdateManyToMany<TKey1, TKey2, TKey3>(IEnumerable<TEntity> currentItems, IEnumerable<TEntity> newItems, Func<TEntity, TKey1> funcKey1, Func<TEntity, TKey2> funcKey2, Func<TEntity, TKey3> funcKey3)
        {
            context.TryUpdateManyToMany(currentItems, newItems, funcKey1, funcKey2, funcKey3);
        }
        public void TryCreateManyToMany(IEnumerable<TEntity> newItems)
        {
            context.TryCreateManyToMany(newItems);
        }

        public void SaveChanges()
        {
            context.SaveChanges();

        }

        public DbSet<TEntity> Entities => context.Set<TEntity>();

        public async Task<IDbContextTransaction> BeginTransactionAsync()
        {
            return await context.Database.BeginTransactionAsync();
        }
    }
}