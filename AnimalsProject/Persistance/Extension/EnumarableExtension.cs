using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Persistance.Extension
{
    public static class EnumarableExtension
    {
        public static IEnumerable<T> Except<T, TKey>(this IEnumerable<T> items, IEnumerable<T> other, Func<T, TKey> getKeyFunc)
        {
            return items
                .GroupJoin(other, getKeyFunc, getKeyFunc, (item, tempItems) => new { item, tempItems })
                .SelectMany(t => t.tempItems.DefaultIfEmpty(), (t, temp) => new { t, temp })
                .Where(t => t.temp == null || t.temp.Equals(default(T)))
                .Select(t => t.t.item);
        }

        public static IEnumerable<T> Except<T, TKey1, TKey2>(this IEnumerable<T> items, IEnumerable<T> other, Func<T, TKey1> getKeyFunc1, Func<T, TKey2> getKeyFunc2)
        {
            var itemsFromFirstKey = items
                .GroupJoin(other, getKeyFunc1, getKeyFunc1, (item, tempItems) => new { item, tempItems })
                .SelectMany(t => t.tempItems.DefaultIfEmpty(), (t, temp) => new { t, temp })
                .Where(t => t.temp == null || t.temp.Equals(default(T)))
                .Select(t => t.t.item);
            var item2FromSecondKey = items
                .GroupJoin(other, getKeyFunc2, getKeyFunc2, (item, tempItems) => new { item, tempItems })
                .SelectMany(t => t.tempItems.DefaultIfEmpty(), (t, temp) => new { t, temp })
                .Where(t => t.temp == null || t.temp.Equals(default(T)))
                .Select(t => t.t.item);
            HashSet<T> smth = itemsFromFirstKey.Union(item2FromSecondKey).ToHashSet();
            return smth;
        }

        public static IEnumerable<T> Except<T, TKey1, TKey2, TKey3>(this IEnumerable<T> items, IEnumerable<T> other,
            Func<T, TKey1> getKeyFunc1, Func<T, TKey2> getKeyFunc2, Func<T, TKey3> getKeyFunc3)
        {
            var item = items
                .GroupJoin(other, getKeyFunc1, getKeyFunc1, (item, tempItems) => new { item, tempItems })
                .SelectMany(t => t.tempItems.DefaultIfEmpty(), (t, temp) => new { t, temp })
                .Where(t => t.temp == null || t.temp.Equals(default(T)))
                .Select(t => t.t.item);
            var item2 = items
                .GroupJoin(other, getKeyFunc2, getKeyFunc2, (item, tempItems) => new { item, tempItems })
                .SelectMany(t => t.tempItems.DefaultIfEmpty(), (t, temp) => new { t, temp })
                .Where(t => t.temp == null || t.temp.Equals(default(T)))
                .Select(t => t.t.item);
            var item3 = items
                .GroupJoin(other, getKeyFunc3, getKeyFunc3, (item, tempItems) => new { item, tempItems })
                .SelectMany(t => t.tempItems.DefaultIfEmpty(), (t, temp) => new { t, temp })
                .Where(t => t.temp == null || t.temp.Equals(default(T)))
                .Select(t => t.t.item);
            return item.Union(item2).Union(item3);
        }

        public static void TryUpdateManyToMany<T, TKey>(this DbContext db, IEnumerable<T> currentItems, IEnumerable<T> newItems, Func<T, TKey> getKey) where T : class
        {
            db.Set<T>().RemoveRange(currentItems.Except(newItems, getKey));
            db.Set<T>().AddRange(newItems.Except(currentItems, getKey));
        }

        public static void TryUpdateManyToMany<T, TKey, TKey1>(this DbContext db, IEnumerable<T> currentItems, IEnumerable<T> newItems,Func<T, TKey> getKey, Func<T, TKey1> getKey2) where T : class
        {
                db.Set<T>().RemoveRange(currentItems.Except(newItems, getKey,getKey2));
                db.Set<T>().AddRange(newItems.Except(currentItems, getKey, getKey2));
        }

        public static void TryUpdateManyToMany<T, TKey1, TKey2, TKey3>(this DbContext db, IEnumerable<T> currentItems, IEnumerable<T> newItems, Func<T, TKey1> getKey1, Func<T, TKey2> getKey2, Func<T, TKey3> getKey3) where T : class
        {
            db.Set<T>().RemoveRange(currentItems.Except(newItems, getKey1, getKey2, getKey3));
            db.Set<T>().AddRange(newItems.Except(currentItems, getKey1, getKey2, getKey3));
        }

        public static void TryCreateManyToMany<T>(this DbContext db, IEnumerable<T> newItems) where T : class 
        {
            db.Set<T>().AddRange(newItems);
        }
    }
}
