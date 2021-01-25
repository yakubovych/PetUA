using Application.Exceptions;
using Application.Validators.ParameterValidators;
using NUnit.Framework;

namespace Application.Tests.Validators.ParameterValidators.PasswordValidatorTests
{
    [TestFixture]
    public class IncludesUpperCaseTest
    {
        [Test]
        [TestCase("Password")]
        [TestCase("SOmE2345")]
        [TestCase("somepasS12345")]
        public void IncludesUpperCase_DoesNotThrowAnyException_WhenPasswordContainsAtLeastOneUpperCase(string password)
        {
            var validator = new PasswordValidator(password, password);

            Assert.DoesNotThrow(() => validator.IncludesUpperCase());
        }

        [TestCase("withoutupper124")]
        [TestCase("password12345")]
        public void IncludesUpperCase_ThrowsValidationException_WhenPasswordDoesNotIncludeUpperCase(string password)
        {
            var validator = new PasswordValidator(password, password);

            Assert.Throws<ValidationException>(() => validator.IncludesUpperCase());
        }
    }
}
