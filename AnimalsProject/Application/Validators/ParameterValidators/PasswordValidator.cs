using Application.Common.Constants;
using Application.Common.Interfaces;
using Application.Exceptions;
using System.Linq;

namespace Application.Validators.ParameterValidators
{
    public class PasswordValidator: IValidator
    {
        private readonly string Password;

        private readonly string ConfirmPassword;

        private const int MIN_PASSWORD_LENGTH = 8;

        private const int MAX_PASSWORD_LENGTH = 100;

        public PasswordValidator(string password, string confirmPassword)
        {
            StringArgumentValidator.IsNullOrEmpty(password, nameof(password));
            StringArgumentValidator.IsNullOrEmpty(confirmPassword, nameof(confirmPassword));

            Password = password;
            ConfirmPassword = confirmPassword;
            
        }

        public void Validate()
        {
            ValidateLength();
            IncludesArabicNumeral();
            IncludesLatinLetter();
            IncludesLowerCase();
            IncludesUpperCase();
            IncludesNonAlphanumeric();
            Match();
        }

        public void ValidateLength()
        {
            if (Password.Length < MIN_PASSWORD_LENGTH)
                throw new ValidationException(ValidationStrings.PasswordLength);
            if (Password.Length > MAX_PASSWORD_LENGTH)
                throw new ValidationException(ValidationStrings.PasswordLengthExceed);
        }

        public void IncludesLatinLetter()
        {
            if (Password.FirstOrDefault(ch => char.IsLetter(ch)) == '\0')
                throw new ValidationException(ValidationStrings.PasswordLatinLetter);
        }

        public void IncludesArabicNumeral()
        {
            if (Password.FirstOrDefault(ch => char.IsDigit(ch)) == '\0')
                throw new ValidationException(ValidationStrings.PasswordArabicNumerals);
        }

        public void IncludesUpperCase()
        {
            if (Password.FirstOrDefault(ch => char.IsUpper(ch)) == '\0')
                throw new ValidationException(ValidationStrings.PasswordUpperCase);
        }

        public void IncludesLowerCase()
        {
            if (Password.FirstOrDefault(ch => char.IsLower(ch)) == '\0')
                throw new ValidationException(ValidationStrings.PasswordLowerCase);

        }

        public void IncludesNonAlphanumeric()
        {
            foreach (var ch in Password)
                if (!char.IsDigit(ch) && !char.IsLetter(ch))
                    throw new ValidationException(ValidationStrings.PasswordAlphanumeric);
        }

        public void Match()
        {
            if (!Password.Equals(ConfirmPassword))
                    throw new ValidationException(ValidationStrings.PasswordsDoNotMatch);
        }

    }
}
