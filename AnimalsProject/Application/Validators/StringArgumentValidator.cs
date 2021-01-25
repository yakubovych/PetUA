using Application.Common.Constants;
using System;

namespace Application.Validators
{
    public static class StringArgumentValidator
    {
        public static void IsNullOrEmpty(string param, string paramName)
        {
            if (string.IsNullOrEmpty(param))
            {
                throw new ArgumentNullException(paramName, ExceptionStrings.NullArgumentStringException);
            }
        }
    }
}
