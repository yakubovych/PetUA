using Application.Exceptions;
using Application.Validators.ParameterValidators;
using NUnit.Framework;

namespace Application.Tests.Validators.ParameterValidators.PasswordValidatorTests
{
    [TestFixture]
    public class ValidateLengthTest
    {
        [Test]
        [TestCase("somepass")]
        [TestCase("somepass2345")]
        [TestCase("longerpassword")]
        [TestCase("andsomeverylongpassword")]
        public void ValidateLength_DoesNotThrowAnyException_WhenPasswordLengthIsValid(string password)
        {
            var validator = new PasswordValidator(password, password);

            Assert.DoesNotThrow(() => validator.ValidateLength());
        }

        [TestCase("short")]
        [TestCase("almost")]
        [TestCase("toolooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooonggggggggggggggggggggggg")]
        [TestCase("andevenloooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooongeeeeeeeeeeeeeeeeeeeeeeeeeeerrrrrrr")]
        public void ValidateLength_ThrowsValidationException_WhenPasswordLengthIsOutOfRange(string password)
        {
            var validator = new PasswordValidator(password, password);

            Assert.Throws<ValidationException>(() => validator.ValidateLength());
        }
    }
}
