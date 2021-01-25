
using NUnit.Framework;
using System.Threading.Tasks;

namespace Application.Tests.Services
{
    [TestFixture]
    public class EmailSenderTest
    {
        [Test]
        public async Task SendEmailAsync_ReturnsAccepted()
        {
            //var configurationMock = new Mock<IConfiguration>();
            //configurationMock.Setup(config => config["SendGrid:SenderEmail"]).Returns("pets.adoption.service@gmail.com");
            //configurationMock.Setup(config => config["SendGrid:SendGridUser"]).Returns("PetsAdoptionService");
            //configurationMock.Setup(config => config["SendGrid:SendGridKey"])
            //    .Returns("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");

            //var emailSender = new EmailService(configurationMock.Object);

            //var response = await emailSender.SendEmailAsync("pets.adoption.service@gmail.com", "Subject", "Message");

            //Assert.AreEqual(HttpStatusCode.Accepted, response.StatusCode);
        }
    }
}
