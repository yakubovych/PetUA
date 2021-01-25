using System.Collections.Generic;

namespace Domain.Models
{
    public class Pagination<T>
    {
        public Pagination()
        {

        }
        public Pagination(IEnumerable<T> data)
        {
            Data = data;
        }
        public IEnumerable<T> Data { get; set; }
        public int? PageNumber { get; set; }
        public int? PageSize { get; set; }
        public double TotalPages { get; set; }
        public string NextPage { get; set; }
        public string PreviousPage { get; set; }
    }
}
