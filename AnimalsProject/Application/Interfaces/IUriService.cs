using Application.Queries;
using System;

namespace Application.Interfaces
{
    public interface IUriService
    {
        Uri GetAllPostUri(string specificUrl, AnimalPaginationQuery pagination, AnimalQuery query);
        Uri GetAllPostUri(string specificUrl, ArticlePaginationQuery pagination, ArticleQuery query);
        Uri GetPostUri(long animalId);
    }
}
