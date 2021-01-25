using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace Persistance.Interfaces
{
    public interface IRepository<TEntity> where TEntity : class
    {
        ValueTask<TEntity> GetByIdAsync(long id);
        IQueryable<TEntity> GetAllQueryable();
        Task<IEnumerable<TEntity>> GetAllAsync();
        IEnumerable<TEntity> Find(Expression<Func<TEntity, bool>> predicate);
        ValueTask<TEntity> SingleOrDefaultAsync(Expression<Func<TEntity, bool>> predicate);
        Task AddAsync(TEntity entity);
        void Update(TEntity obj);
        Task AddRangeAsync(IEnumerable<TEntity> entities);
        Task Remove(TEntity entity);
        Task RemoveRange(IEnumerable<TEntity> entities);
        Task SaveAsync();
        void SaveChanges();
        void TryUpdateManyToMany<TKey>(IEnumerable<TEntity> currentItems, IEnumerable<TEntity> newItems, Func<TEntity, TKey> funcKey);
        void TryUpdateManyToMany<TKey1, TKey2>(IEnumerable<TEntity> currentItems, IEnumerable<TEntity> newItems, Func<TEntity, TKey1> funcKey1,  Func<TEntity, TKey2> funcKey2);
        void TryUpdateManyToMany<TKey1, TKey2, TKey3>(IEnumerable<TEntity> currentItems, IEnumerable<TEntity> newItems, Func<TEntity, TKey1> funcKey1, Func<TEntity, TKey2> funcKey2, Func<TEntity, TKey3> funcKey3);
        void TryCreateManyToMany(IEnumerable<TEntity> newItems);
        DbSet<TEntity> Entities { get; }
        Task<IDbContextTransaction> BeginTransactionAsync();
    }
}
