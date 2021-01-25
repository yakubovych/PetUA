using Microsoft.AspNetCore.WebUtilities;
using System.Text;

namespace Persistance.Extension
{
    public static class StringExtension
    {
        public static string Base64UrlDecodeString(this string encodedString)
        {
            var encodedCharacters = WebEncoders.Base64UrlDecode(encodedString);

            return Encoding.UTF8.GetString(encodedCharacters);
        }

        public static string Base64UrlEncodeString(this string str)
        {
            var encodedCharacters =  Encoding.UTF8.GetBytes(str);

            return WebEncoders.Base64UrlEncode(encodedCharacters);
        }

        public static string ToLowerCaseWithFirstLetterInUpper(this string str)
        {
            return char.ToUpper(str[0]) + str.Substring(1).ToLower();
        }
    }
}
