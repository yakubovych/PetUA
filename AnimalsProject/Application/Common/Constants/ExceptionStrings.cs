namespace Application.Common.Constants
{
    public static class ExceptionStrings
    {
        public const string NullArgumentException = "Invalid input data. Argument cannot be null. ";
        public const string NullArgumentStringException = "Invalid input data. String argument cannot be null or empty. ";
        public const string MinMaxNumberArgumentException = "Minimum limit can not be greater than the maximum. ";
        public const string NegativeIntegerValueException = "Invalid input data. ";
        public const string ObjectNotFoundException = "Invalid search data. Object is not found. ";
        public const string ObjectUpdateException = "Invalid object data. Failed to update an object. ";
        public const string ObjectCreateException = "Invalid object data. Failed to create an object. ";
        public const string ObjectDeleteException = "Failed to delete an object. ";
        public const string RolePromoteException= "Failed to promote user. ";
        public const string RoleDemoteException = "Failed to demote user. ";
        public const string RoleNotFoundException = "Specified role does not exist. ";
        public const string AddToRoleException = "Failed to add role to user. ";
        public const string EmailConfirmException = "Failed to confirm email. ";
        public const string ResetPasswordException = "Failed to reset password. ";
        public const string UserNotFoundException = "User with specified data is not found. ";
        public const string UserUpdateException = "Invalid user data. Failed to update user. ";
        public const string LoginException = "Cannot find user with specified email and password. ";
        public const string CreateUserException = "Unable to create user account. There may already be one with specified credentials. ";
        public const string CreateUserHelpException = "An error occured while creating volunteering form. You may have already created one. ";
        public const string InvalidRefreshTokenException = "Invalid refresh token. ";
        public const string InvalidAccessTokenException = "Invalid access token. ";
        public const string SendEmailException = "Failed to send an email. ";
        public const string RevokeException = "Failed to revoke user's authentication tokens. ";
        public const string RefreshException = "Failed to refresh users's authentication tokens. ";
        public const string UserDeleteException = "Failed to delete an user. ";
        public const string MainAdminDeleteException = "An error occured when trying to delete system administrator account. Please contact support. ";
    }
}
