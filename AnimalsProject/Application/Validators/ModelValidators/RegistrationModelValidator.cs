using Application.Common.Constants;
using Application.Common.Interfaces;
using Application.DTO.User;
using Application.Validators.ParameterValidators;
using System;

namespace Application.Validators.ModelValidators
{
    public class RegistrationModelValidator: IModelValidator
    {
        private readonly IValidator PasswordValidator;  

        private readonly IValidator EmailValidator;

        private readonly IValidator PhoneNumberValidator;

        public RegistrationModelValidator(UserRegistrationDto model)
        {
            if (model == null)
               throw new ArgumentNullException(nameof(model), ExceptionStrings.NullArgumentException);

            PasswordValidator = new PasswordValidator(model.Password, model.ConfirmPassword);
            EmailValidator = new EmailValidator(model.Email);
            PhoneNumberValidator = new PhoneNumberValidator(model.PhoneNumber);

        }

        public void ValidateModel()
        {
            EmailValidator.Validate();
            PhoneNumberValidator.Validate();
            PasswordValidator.Validate();
        }
    }
}
