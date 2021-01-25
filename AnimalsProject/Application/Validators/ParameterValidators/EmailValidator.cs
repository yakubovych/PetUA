using Application.Common.Constants;
using Application.Common.Interfaces;
using Application.Exceptions;
using System;
using System.Globalization;
using System.Text.RegularExpressions;

namespace Application.Validators.ParameterValidators
{
    public class EmailValidator: IValidator
    {
        private string Email;

        public EmailValidator(string email)
        {
            StringArgumentValidator.IsNullOrEmpty(email, nameof(email));

            Email = email;
        }

        public void Validate()
        {
            try
            {
                // Normalize the domain
                Email = Regex.Replace(Email, @"(@)(.+)$",
                        (match) =>
                        {
                            // Use IdnMapping class to convert Unicode domain names.
                            var idn = new IdnMapping();

                            // Pull out and process domain name (throws ArgumentException on invalid)
                            var domainName = idn.GetAscii(match.Groups[2].Value);

                            return match.Groups[1].Value + domainName;
                        },
                        RegexOptions.None, TimeSpan.FromMilliseconds(200));

                var match = Regex.IsMatch(Email,
                    @"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                    @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-0-9a-z]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$",
                    RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250));

                if (!match)
                    throw new ValidationException(ValidationStrings.InvalidEmail);

            }
            catch (Exception)
            {
                throw new ValidationException(ValidationStrings.InvalidEmail);
            }
        }

    }
}
