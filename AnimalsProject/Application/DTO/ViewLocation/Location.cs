
using Newtonsoft.Json;

namespace Application.DTO.ViewLocation
{
    public class Location
    {
        [JsonProperty(PropertyName = "country_name")]
        public string Country { get; set; }
    }
}
