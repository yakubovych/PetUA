using Application.Exceptions;
using Application.Validators.ParameterValidators;
using NUnit.Framework;

namespace Application.Tests.Validators.ParameterValidators.PasswordValidatorTests
{
    [TestFixture]
    public class IncludesArabicNumeralTest
    {
        [Test]
        [TestCase("somepas12s")]
        [TestCase("somepass2345")]
        [TestCase("111112345")]
        public void IncludesArabicNumeral_DoesNotThrowAnyException_WhenPasswordContainsAtLeastOneArabicNumeral(string password)
        {
            var validator = new PasswordValidator(password, password);

            Assert.DoesNotThrow(() => validator.IncludesArabicNumeral());
        }

        [TestCase("withoutnumeral")]
        [TestCase("nonnumeric")]
        public void IncludesArabicNumeral_ThrowsValidationException_WhenPasswordDoesNotIncludeArabicNumeral(string password)
        {
            var validator = new PasswordValidator(password, password);

            Assert.Throws<ValidationException>(() => validator.IncludesArabicNumeral());
        }
    }
}
