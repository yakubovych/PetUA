using System.IO;

namespace Domain.Models
{
    public class BlobInfoDto
    {
        public BlobInfoDto(Stream stream, string contentType)
        {
            Stream = stream;
            ContentType = contentType;
        }
        public Stream Stream { get; set; }
        public string ContentType { get; set; }
    }
}
