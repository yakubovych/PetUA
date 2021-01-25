using Microsoft.AspNetCore.StaticFiles;

namespace Persistance.Extension
{
    public static class FileExtension
    {
        private static readonly FileExtensionContentTypeProvider Provider = new FileExtensionContentTypeProvider();

        public static string GetContentType(this string fileName)
        {
            if(!Provider.TryGetContentType(fileName,out var contentType))
            {
                contentType = "applicaton/octet-stream";
            }
            return contentType;
        }
    }
}
