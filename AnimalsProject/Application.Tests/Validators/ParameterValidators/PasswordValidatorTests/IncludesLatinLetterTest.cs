using Application.Exceptions;
using Application.Validators.ParameterValidators;
using NUnit.Framework;

namespace Application.Tests.Validators.ParameterValidators.PasswordValidatorTests
{
    [TestFixture]
    public class IncludesLatinLetterTest
    {
        [Test]
        [TestCase("12222222ef")]
        [TestCase("SOME2345")]
        [TestCase("111112345a")]
        public void IncludesLatinLetter_DoesNotThrowAnyException_WhenPasswordContainsAtLeastOneLatinLetter(string password)
        {
            var validator = new PasswordValidator(password, password);

            Assert.DoesNotThrow(() => validator.IncludesLatinLetter());
        }

        [TestCase("10000000")]
        [TestCase("1234567890")]
        public void IncludesLatinLetter_ThrowsValidationException_WhenPasswordDoesNotIncludeLatinLetter(string password)
        {
            var validator = new PasswordValidator(password, password);

            Assert.Throws<ValidationException>(() => validator.IncludesLatinLetter());
        }
    }
}
