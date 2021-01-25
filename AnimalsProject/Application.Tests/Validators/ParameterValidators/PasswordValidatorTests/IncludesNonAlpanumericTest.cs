using Application.Exceptions;
using Application.Validators.ParameterValidators;
using NUnit.Framework;

namespace Application.Tests.Validators.ParameterValidators.PasswordValidatorTests
{
    [TestFixture]
    public class IncludesNonAlpanumericTest
    {
        [TestCase("Password")]
        [TestCase("SOmE2345")]
        [TestCase("somepasS12345")]
        public void IncludesNonAlphanumeric_DoesNotThrowAnyException_WhenPasswordDoesNotContainNonAlphanumeric(string password)
        {
            var validator = new PasswordValidator(password, password);

            Assert.DoesNotThrow(() => validator.IncludesNonAlphanumeric());
        }

        [TestCase("pas_sword12345!")]
        [TestCase(":.password12345")]
        [TestCase("password12345/]")]
        [TestCase("password@12345()")]
        public void IncludesNonAlphanumeric_ThrowsValidationException_WhenPasswordContainsNonAlphanumeric(string password)
        {
            var validator = new PasswordValidator(password, password);

            Assert.Throws<ValidationException>(() => validator.IncludesNonAlphanumeric());
        }
    }
}
