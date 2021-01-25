using System;
using Application.Interfaces;
using Application.Queries;
using Microsoft.AspNetCore.WebUtilities;

namespace Application.Services
{
    public class UriService : IUriService
    {
        private string _baseUri;

        public UriService(string baseUri)
        {
            _baseUri = baseUri;
        }
        public Uri GetAllPostUri(string specificUrl, AnimalPaginationQuery pagination, AnimalQuery query)
        {
            var stringHelper = _baseUri;
            _baseUri += specificUrl;
            var uri = new Uri(_baseUri);
            var modifiedUrl = _baseUri;
            if (!string.IsNullOrWhiteSpace(query.Weight))
                modifiedUrl = QueryHelpers.AddQueryString(modifiedUrl, "weight", query.Weight);
            if (!string.IsNullOrWhiteSpace(query.IsNew))
                modifiedUrl = QueryHelpers.AddQueryString(modifiedUrl, "isNew", query.IsNew);
            if (!string.IsNullOrWhiteSpace(query.IsDisabled))
                modifiedUrl = QueryHelpers.AddQueryString(modifiedUrl, "isDisabled", query.IsDisabled);
            if (!string.IsNullOrWhiteSpace(query.Gender))
                modifiedUrl = QueryHelpers.AddQueryString(modifiedUrl, "gender", query.Gender);
            if (!string.IsNullOrWhiteSpace(query.Category))
                modifiedUrl = QueryHelpers.AddQueryString(modifiedUrl, "category", query.Category);
            if (!string.IsNullOrWhiteSpace(query.DateOfBirth))
                modifiedUrl = QueryHelpers.AddQueryString(modifiedUrl, "dateOfBirth", query.DateOfBirth);

            if (pagination == null)
            {
                return uri;
            }
            modifiedUrl = QueryHelpers.AddQueryString(modifiedUrl, "pageNumber", pagination.PageNumber.ToString());
            modifiedUrl = QueryHelpers.AddQueryString(modifiedUrl, "pageSize", pagination.PageSize.ToString());

            _baseUri = stringHelper;

            return new Uri(modifiedUrl);
        }

        public Uri GetAllPostUri(string specificUrl, ArticlePaginationQuery pagination, ArticleQuery query)
        {
            var stringHelper = _baseUri;
            _baseUri += specificUrl;
            var uri = new Uri(_baseUri);
            var modifiedUrl = _baseUri;
            if (!string.IsNullOrWhiteSpace(query.TitleOrContent))
                modifiedUrl = QueryHelpers.AddQueryString(modifiedUrl, "titleOrContent", query.TitleOrContent);
            if (!string.IsNullOrWhiteSpace(query.Tag))
                modifiedUrl = QueryHelpers.AddQueryString(modifiedUrl, "tag", query.Tag);
            
            if (pagination == null)
            {
                return uri;
            }
            modifiedUrl = QueryHelpers.AddQueryString(modifiedUrl, "pageNumber", pagination.PageNumber.ToString());
            modifiedUrl = QueryHelpers.AddQueryString(modifiedUrl, "pageSize", pagination.PageSize.ToString());

            _baseUri = stringHelper;

            return new Uri(modifiedUrl);
        }

        public Uri GetPostUri(long animalId)
        {
            throw new NotImplementedException();
        }
    }
}