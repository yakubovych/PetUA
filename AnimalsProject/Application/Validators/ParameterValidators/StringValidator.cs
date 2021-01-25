using Application.Common.Interfaces;
using Application.Exceptions;

namespace Application.Validators.ParameterValidators
{
    public class StringValidator: IValidator
    {
        private readonly string Text;

        private readonly int MaxLength;

        private readonly int MinLength;

        private readonly string ExceptionMessage;

        public StringValidator(string text, int minLength, int maxLength, string exceptionMessage)
        {
            StringArgumentValidator.IsNullOrEmpty(text, nameof(text));
            StringArgumentValidator.IsNullOrEmpty(exceptionMessage, nameof(exceptionMessage));
            Text = text;
            MaxLength = maxLength;
            MinLength = minLength;
            ExceptionMessage = exceptionMessage;
        }

        public void Validate()
        {
            if (Text.Length < MinLength && Text.Length > MaxLength)
                throw new ValidationException(ExceptionMessage);
        }
    }
}
