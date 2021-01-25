using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using System.IO;
using Application.Interfaces;
using Microsoft.AspNetCore.Hosting;
using Application.Common.Interfaces;

namespace Application.Helpers
{
    public class EmailHelper: IEmailHelper
    {
        private readonly IConfiguration _configuration;

        private readonly IEmailService _emailService;

        private readonly IHostingEnvironment _environment;
            
        public EmailHelper(IConfiguration configuration, IEmailService emailService, IHostingEnvironment environment)
        {
            _configuration = configuration;
            _emailService = emailService;
            _environment = environment;
        }
        public async Task GetDataAndSendAsync(string emailReceiver, string PathToEmailBodyTempalte, string emailSubjectTemlate, params string[] links)
        {
            var pathToTemplate = _environment.WebRootPath + _configuration[PathToEmailBodyTempalte];
            string content = string.Empty;

            using (TextReader reader = new StreamReader(pathToTemplate))
            {
                content = await reader.ReadToEndAsync();
            }

            var formatedTemplateContent = string.Format(content, links);
            var emailSubject = _configuration[emailSubjectTemlate];

            await _emailService.SendEmailAsync(emailReceiver, emailSubject, formatedTemplateContent);
        }
    }
}
