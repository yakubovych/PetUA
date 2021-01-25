namespace Application.Common.Constants
{
    public static class ValidationStrings
    {
        public static readonly string PasswordLength = "Password must be at least 8 charaters in lenght. ";
        public static readonly string PasswordLengthExceed = "Password must be at most 100 charaters in lenght. ";
        public static readonly string PasswordArabicNumerals = "Password must include at least one Arabic numerals. ";
        public static readonly string PasswordLatinLetter = "Password must include at least one Latin letter. ";
        public static readonly string PasswordLowerCase = "Password must include at least one lower case letter. ";
        public static readonly string PasswordUpperCase = "Password must include at least one upper case letter. ";
        public static readonly string PasswordAlphanumeric = "Password must not include any non alphanumeric characters!. ";
        public static readonly string PasswordsDoNotMatch = "Passwords do not match. ";
        public static readonly string InvalidEmail = "Invalid email address. Specify it in the correct format or write another one.";
        public static readonly string InvalidPhoneNumber = "Invalid phone number. It must not contain any non numeric value and be less or more than 10 characters in legth. ";
        public static readonly string InvalidUserNameNumber = "Invalid user name. ";
        public static readonly string PhoneNumberLength = "Phone number must be 10 characters in length. ";
        public static readonly string AnimalNameRequired = "Animal name must be specified. ";
        public static readonly string AnimalNameLength = "Animal name can not be more than 200 characters in legth. ";
        public static readonly string InvalidCategoryId = "Invalid category id. ";
        public static readonly string InvalidAddressId = "Invalid address id. ";
        public static readonly string InvalidDateOfBirth = "Invalid date of birth. It can not be greater than current date.";
        public static readonly string InvalidFoundDate = "Invalid date when animal was found. It can not be greater than current date.";
        public static readonly string InvalidWeight = "Animal weight can not be less than 0. ";
        public static readonly string InvalidWithersHeight = "Animal wither height can not be less 0. ";
    }
}
