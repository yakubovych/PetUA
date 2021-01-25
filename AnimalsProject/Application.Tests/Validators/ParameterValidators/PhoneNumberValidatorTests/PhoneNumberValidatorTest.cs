using Application.Exceptions;
using Application.Validators.ParameterValidators;
using NUnit.Framework;

namespace Application.Tests.Validators.ParameterValidators.PhoneNumberValidatorTests
{
    [TestFixture]
    public class PhoneNumberValidatorTest
    {
        [Test]
        [TestCase("0948364237a")]
        [TestCase("AS48364237")]
        [TestCase("09483")]
        [TestCase("09483642371234")]
        [TestCase(" ")]
        public void Validate_ThrowsValidationException_WhenPhoneNumberIsInvalid(string phoneNumber)
        {
            var validator = new PhoneNumberValidator(phoneNumber);

            Assert.Throws<ValidationException>(() => validator.Validate());
        }

        [Test]
        [TestCase("0948364237")]
        [TestCase("0148364237")]
        public void Validate_DoesNotThrowAnyException_WhenPhoneNumberIsValid(string phoneNumber)
        {
            var validator = new PhoneNumberValidator(phoneNumber);

            Assert.DoesNotThrow(() => validator.Validate());
        }
    }
}
