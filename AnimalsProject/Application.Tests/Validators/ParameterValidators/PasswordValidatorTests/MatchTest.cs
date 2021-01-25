using Application.Exceptions;
using Application.Validators.ParameterValidators;
using NUnit.Framework;

namespace Application.Tests.Validators.ParameterValidators.PasswordValidatorTests
{
    [TestFixture]
    public class MatchTest
    {
        [Test]
        [TestCase("somepass" , "somepass")]
        [TestCase("password99", "password99")]
        [TestCase("123456789", "123456789")]
        public void ValidateLength_DoesNotThrowAnyException_WhenPasswordsMatch(string password, string confirmPassword)
        {
            var validator = new PasswordValidator(password, confirmPassword);

            Assert.DoesNotThrow(() => validator.Match());
        }

        [TestCase("match99", "match9")]
        [TestCase("almostmatch", "ALMOSTMATCH")]
        [TestCase("123456789", "1234567890")]
        [TestCase("123456789", " ")]
        public void ValidateLength_ThrowsValidationException_WhenPasswordsDoNotMatch(string password, string confirmPassword)
        {
            var validator = new PasswordValidator(password, confirmPassword);

            Assert.Throws<ValidationException>(() => validator.Match());
        }
    }
}
