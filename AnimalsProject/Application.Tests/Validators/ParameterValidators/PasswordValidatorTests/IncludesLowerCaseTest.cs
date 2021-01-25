using Application.Exceptions;
using Application.Validators.ParameterValidators;
using NUnit.Framework;

namespace Application.Tests.Validators.ParameterValidators.PasswordValidatorTests
{
    [TestFixture]
    public class IncludesLowerCaseTest
    {
        [Test]
        [TestCase("password")]
        [TestCase("SOmE2345")]
        [TestCase("SOMEPASS12345a")]
        public void IncludesLowerCase_DoesNotThrowAnyException_WhenPasswordContainsAtLeastOneLowerCase(string password)
        {
            var validator = new PasswordValidator(password, password);

            Assert.DoesNotThrow(() => validator.IncludesLowerCase());
        }

        [TestCase("1000000ASSDF")]
        [TestCase("ASDKFHJGD")]
        public void IncludesLowerCase_ThrowsValidationException_WhenPasswordDoesNotIncludeLowerCase(string password)
        {
            var validator = new PasswordValidator(password, password);

            Assert.Throws<ValidationException>(() => validator.IncludesLowerCase());
        }
    }
}
