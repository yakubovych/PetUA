using Application.Interfaces;
using Application.Queries;
using Domain.Models;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Application.Helpers
{
    public static class PaginationHelper
    {
        public static Pagination<T> CreatePaginatedResponse<T,K>(IUriService uriService, AnimalPaginationQuery paginationQuery,
            ICollection<T> response, ICollection<K> allAnimals, string specificUrl, AnimalQuery query)
        {
            var totalPages = Math.Ceiling((double)allAnimals.Count / paginationQuery.PageSize);
            var nextPage = (paginationQuery.PageNumber >= 1 && paginationQuery.PageNumber < totalPages)
               ? uriService.GetAllPostUri(specificUrl, new AnimalPaginationQuery()
               {
                   PageNumber = paginationQuery.PageNumber + 1,
                   PageSize = paginationQuery.PageSize
               },query).ToString()
               : null;
            var previousPage = paginationQuery.PageNumber - 1 >= 1
               ? uriService.GetAllPostUri(specificUrl, new AnimalPaginationQuery()
               {
                   PageNumber = paginationQuery.PageNumber - 1,
                   PageSize = paginationQuery.PageSize
               }, query).ToString()
               : null;

            var paginationResponse = new Pagination<T>
            {
                Data = response.AsEnumerable(),
                PageNumber = paginationQuery.PageNumber >= 1 ? paginationQuery.PageNumber : (int?)null,
                PageSize = paginationQuery.PageSize >= 1 ? paginationQuery.PageSize : (int?)null,
                NextPage = response.Any() ? nextPage : null,
                PreviousPage = previousPage,
                TotalPages = totalPages
            };

            return paginationResponse;
        }

        public static Pagination<T> CreatePaginatedResponse<T, K>(IUriService uriService, ArticlePaginationQuery paginationQuery,
            ICollection<T> response, ICollection<K> allArticles, string specificUrl, ArticleQuery query)
        {
            var totalPages = Math.Ceiling((double)allArticles.Count / paginationQuery.PageSize);
            var nextPage = (paginationQuery.PageNumber >= 1 && paginationQuery.PageNumber < totalPages)
               ? uriService.GetAllPostUri(specificUrl, new ArticlePaginationQuery()
               {
                   PageNumber = paginationQuery.PageNumber + 1,
                   PageSize = paginationQuery.PageSize
               }, query).ToString()
               : null;
            var previousPage = paginationQuery.PageNumber - 1 >= 1
               ? uriService.GetAllPostUri(specificUrl, new ArticlePaginationQuery()
               {
                   PageNumber = paginationQuery.PageNumber - 1,
                   PageSize = paginationQuery.PageSize
               }, query).ToString()
               : null;

            var paginationResponse = new Pagination<T>
            {
                Data = response.AsEnumerable(),
                PageNumber = paginationQuery.PageNumber >= 1 ? paginationQuery.PageNumber : (int?)null,
                PageSize = paginationQuery.PageSize >= 1 ? paginationQuery.PageSize : (int?)null,
                NextPage = response.Any() ? nextPage : null,
                PreviousPage = previousPage,
                TotalPages = totalPages
            };

            return paginationResponse;
        }
    }
}
