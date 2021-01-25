using Application.Validators.ParameterValidators;
using NUnit.Framework;
using System;

namespace Application.Tests.Validators.ParameterValidators.PasswordValidatorTests
{
    [TestFixture]
    public class PasswordValidatorTest
    {
        [Test]
        [TestCase("somepass", "somepass")]
        [TestCase("password99", "password99")]
        [TestCase("123456789", "123456789")]
        public void PasswordValidator_DoesNotThrowAnyException_WhenItIsInitilizedWithValidArguments(string password, string confirmPassword)
        {
            Assert.DoesNotThrow(() => new PasswordValidator(password, confirmPassword));
        }

        [TestCase("", "")]
        [TestCase("almostmatch", null)]
        [TestCase(null, "1234567890")]
        [TestCase("123456789", "")]
        public void PasswordValidator_ThrowsArgumentNullException_WhenItIsInitilizedWithInvalidArguments(string password, string confirmPassword)
        {
            Assert.Throws<ArgumentNullException>(() => new PasswordValidator(password, confirmPassword));
        }
    }
}
