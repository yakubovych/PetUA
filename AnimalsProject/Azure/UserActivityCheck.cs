using System;
using System.Threading.Tasks;
using Microsoft.Azure.WebJobs;
using Microsoft.Extensions.Logging;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Data;
using SendGrid;
using SendGrid.Helpers.Mail;

namespace ActivityCheck
{
    public static class UserActivityCheck
    {
        [FunctionName("UsersActivityCheck")]
        public static async Task Run([TimerTrigger("0 */2 * * * *")]TimerInfo myTimer, ILogger log)
        {
            log.LogInformation($"Users activity check started at: {DateTime.Now}");
            var connectionStr = Environment.GetEnvironmentVariable("ConnectionString");
            using (SqlConnection conn = new SqlConnection(connectionStr))
            {
                conn.Open();
                log.LogInformation("Sql connection is opened");
                var text = "SELECT Email FROM AspNetUsers " +
                        "WHERE DATEDIFF(mm, LastActive, GetUtcDate()) > 10;";

                using (SqlCommand cmd = new SqlCommand(text, conn))
                {
                    log.LogInformation("Executing sql command");
                    var reader = await cmd.ExecuteReaderAsync();
                    var unactiveUsers = new List<string>();
                    while (reader.Read())
                    {
                        unactiveUsers.Add(((IDataRecord)reader)[0].ToString());
                    }
                    reader.Close();
                    log.LogInformation("Unactive users count: " + unactiveUsers.Count);
                    if (unactiveUsers.Count > 0)
                    {
                        var listOfUsers = "<p><ul>";
                        foreach (var user in unactiveUsers)
                        {
                            listOfUsers += $"<li>{user}</li>";
                        }
                        listOfUsers += "</ul></p>";

                        var content = Environment.GetEnvironmentVariable("Content") + listOfUsers;
                        var to = Environment.GetEnvironmentVariable("Email");
                        var subject = Environment.GetEnvironmentVariable("Subject");

                        var response = await SendEmailAsync(to, subject, content);

                        log.LogInformation($"Email with listed unactive users has been sent");
                        var responseString = response.StatusCode.ToString();
                        log.LogInformation($"Response: {responseString}");
                    }
                }
            }
        }
        public static async Task<Response> SendEmailAsync(string to, string subject, string message)
        {
            var key = Environment.GetEnvironmentVariable("SendGridKey");
            var user = Environment.GetEnvironmentVariable("SendGridUser");
            var from = Environment.GetEnvironmentVariable("SenderEmail");
            var client = new SendGridClient(key);
            var msg = new SendGridMessage()
            {
                From = new EmailAddress(from, user),
                Subject = subject,
                PlainTextContent = message,
                HtmlContent = message
            };
            msg.AddTo(new EmailAddress(to));
            msg.SetClickTracking(false, false);

            return await client.SendEmailAsync(msg);
        }
    }
}
 