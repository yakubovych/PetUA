using Application.Common.Constants;
using Application.Exceptions;
using Application.Interfaces;
using Microsoft.Extensions.Configuration;
using SendGrid;
using SendGrid.Helpers.Mail;
using System.Net;
using System.Threading.Tasks;

namespace Application.Services
{
    public class EmailService: IEmailService
    {
        private readonly IConfiguration Configuration;

        public EmailService(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public async Task SendEmailAsync(string email, string subject, string message)
        {
            var sendEmailResult = await Execute(Configuration["SendGrid:SendGridKey"], subject, message, email);
            if (sendEmailResult.StatusCode != HttpStatusCode.Accepted  && 
                sendEmailResult.StatusCode != HttpStatusCode.OK)
            {
                throw new SendEmailException(ExceptionStrings.SendEmailException, email);
            }
        }

        private Task<Response> Execute(string apiKey, string subject, string message, string email)
        {
            var client = new SendGridClient(apiKey);
            var msg = new SendGridMessage()
            {
                From = new EmailAddress(Configuration["SendGrid:SenderEmail"], Configuration["SendGrid:SendGridUser"]),
                Subject = subject,
                PlainTextContent = message,
                HtmlContent = message
            };
            msg.AddTo(new EmailAddress(email));
            msg.SetClickTracking(false, false);

            return client.SendEmailAsync(msg);
        }
    }
}

