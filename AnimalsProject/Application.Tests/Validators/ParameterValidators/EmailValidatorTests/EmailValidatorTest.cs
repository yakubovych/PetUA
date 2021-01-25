using Application.Exceptions;
using Application.Validators.ParameterValidators;
using NUnit.Framework;

namespace Application.Tests.Validators.ParameterValidators.EmailValidatorTests
{
    [TestFixture]
    public class EmailValidatorTest
    {
        [Test]
        [TestCase("j..s@proseware.com")]
        [TestCase("js*@proseware.com")]
        [TestCase("j.@server1.proseware.com")]
        [TestCase("js@proseware..com")]
        public void Validate_ThrowsValidationException_WhenEmailIsInvalid(string email)
        {
            var validator = new EmailValidator(email);

            Assert.Throws<ValidationException>(() => validator.Validate());
        }
        
        [Test]
        [TestCase("david.jones@proseware.com")]
        [TestCase("jones@ms1.proseware.com")]
        [TestCase("j@proseware.com9")]
        [TestCase("j.s@server1.proseware.com")]
        [TestCase("\"j\"s\"\"@proseware.com")]
        [TestCase("js@contoso.中国")]
        [TestCase("j_9@[129.126.118.1]")]
        public void Validate_DoesNotThrowAnyException_WhenEmailIsValid(string email)
        {
            var validator = new EmailValidator(email);

            Assert.DoesNotThrow(() => validator.Validate());
        }
    }
}
