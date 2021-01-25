using Application.DTO.Address;
using Application.DTO.AdoptOrder;
using Application.DTO.Article;
using Application.DTO.BookOrder;
using System.Collections.Generic;

namespace Application.DTO.User
{
    public class UserIncludeValuesDto
    {
        public string Id { get; set; }
        public string FullName { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
        public AddressDto Address { get; set; }
        public IEnumerable<UserHelpInDto> Helps { get; set; }
        public IEnumerable<AdoptOrderDto> AdoptOrders { get; set; }
        public IEnumerable<BookOrderDto> BookOrders { get; set; }
        public IEnumerable<ArticleDto> Articles { get; set; }
    }
}
