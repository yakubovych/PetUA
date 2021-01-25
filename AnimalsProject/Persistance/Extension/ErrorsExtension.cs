using Microsoft.AspNetCore.Identity;
using System.Collections.Generic;
using System.Linq;

namespace Persistance.Extension
{
    public static class ErrorsExtension
    {
        public static List<string> ToListOfStrings(this IEnumerable<IdentityError> identityErrors)
        {
            return identityErrors.Select(err => err.Description).ToList();
        }
    }
}
