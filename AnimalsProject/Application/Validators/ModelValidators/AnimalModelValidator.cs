using Application.Common.Constants;
using Application.Common.Interfaces;
using Application.DTO.Animal;
using Application.Exceptions;
using Application.Validators.ParameterValidators;
using System;

namespace Application.Validators.ModelValidators
{
    public class AnimalModelValidator: IModelValidator
    {
        private readonly IValidator StringValidator;
        private readonly AnimalForCreationDto Model;
        private const int MIN_ID = 1;
        private const int MIN_LENGTH = 0;
        private const int MAX_LENGTH = 0;
        private const double MIN_WEIGHT = 0.0;
        private const double MIN_HEIGHT = 0.0;

        public AnimalModelValidator(AnimalForCreationDto model)
        {
            if (model == null)
                throw new ArgumentNullException(nameof(model), ExceptionStrings.NullArgumentException);

            Model = model;

            StringValidator = new StringValidator(model.Name, MIN_LENGTH, MAX_LENGTH, ValidationStrings.AnimalNameLength);
        }

        public void ValidateModel()
        {
            StringValidator.Validate();

            if (Model.AddressId < MIN_ID)
                throw new ValidationException(ValidationStrings.InvalidAddressId);
            if (Model.CategoryId < MIN_ID)
                throw new ValidationException(ValidationStrings.InvalidAddressId);
            if (Model.DateOfBirth >= DateTime.Now)
                throw new ValidationException(ValidationStrings.InvalidDateOfBirth);
            if (Model.FoundDate >= DateTime.Now)
                throw new ValidationException(ValidationStrings.InvalidFoundDate);
            if (Model.Weight <= MIN_WEIGHT)
                throw new ValidationException(ValidationStrings.InvalidWeight);
            if (Model.WithersHeight < MIN_HEIGHT)
                throw new ValidationException(ValidationStrings.InvalidWithersHeight);
            
        }
    }
}
