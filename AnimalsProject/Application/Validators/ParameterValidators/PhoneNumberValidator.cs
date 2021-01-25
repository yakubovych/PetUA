using Application.Common.Constants;
using Application.Common.Interfaces;
using Application.Exceptions;
using System.Text.RegularExpressions;

namespace Application.Validators.ParameterValidators
{
    public class PhoneNumberValidator: IValidator
    {
        private readonly string PhoneNumber;

        public PhoneNumberValidator(string phoneNumber)
        {
            StringArgumentValidator.IsNullOrEmpty(phoneNumber, nameof(phoneNumber));

            PhoneNumber = phoneNumber;
        }

        public void Validate()
        {
            if (!Regex.Match(PhoneNumber, @"^([0-9]{10})$").Success)
                throw new ValidationException(ValidationStrings.InvalidPhoneNumber);
        }

    }
}
