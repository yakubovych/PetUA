using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Threading.Tasks;
using AzureFunctions.Models;
using Microsoft.Azure.WebJobs;
using Microsoft.Extensions.Logging;
using SendGrid;
using SendGrid.Helpers.Mail;

namespace AzureFunctions
{
    public static class UserVaccineNotification
    {
        [FunctionName("UserVaccineNotification")]
        public static async System.Threading.Tasks.Task RunAsync([TimerTrigger("0 */2 * * * *")]TimerInfo myTimer, ILogger log)
        {
            var connectionStr = Environment.GetEnvironmentVariable("ConnectionString");
            using (SqlConnection conn = new SqlConnection(connectionStr))
            {
                conn.Open();
                log.LogInformation("Sql connection is opened");
                var text = " SELECT Owner.Email as UserEmail, Animals.Name, Vaccine.Name as VaccineName, Vaccine.Type as VaccineType, Vaccine.NextVaccinationDate FROM Animals"
                           + " INNER JOIN(SELECT Vaccinations.Type, Vaccinations.Name, AnimalVaccination.AnimalId, AnimalVaccination.NextVaccinationDate FROM Vaccinations"
                           + " INNER JOIN AnimalVaccination ON Vaccinations.Id = AnimalVaccination.VaccinationId) as Vaccine ON Animals.Id = Vaccine.AnimalId"
                           + " INNER JOIN(SELECT AdoptOrders.AnimalId, AspNetUsers.Email FROM AdoptOrders"
                           + " INNER JOIN AspNetUsers ON AspNetUsers.Id = AdoptOrders.UserId"
                           + " WHERE AdoptOrders.Status = 1) as Owner ON Animals.Id = Owner.AnimalId"
                           + " WHERE Animals.Status = 2"
                           + " AND(DATEDIFF(DAY, GETDATE(), Vaccine.NextVaccinationDate) = 3"
                           + "  OR DATEDIFF(DAY, DATEADD(YEAR, -1, GETDATE()), Vaccine.NextVaccinationDate) = 3)";

                using (SqlCommand cmd = new SqlCommand(text, conn))
                {
                    log.LogInformation("Executing sql command");
                    var reader = await cmd.ExecuteReaderAsync();
                    var vaccineNotifications = new List<VaccineNotification>();
                    while (reader.Read())
                    {
                        vaccineNotifications.Add(new VaccineNotification
                        {
                            UserEmail = reader["UserEmail"].ToString(),
                            AnimalName = reader["Name"].ToString(),
                            VaccineName = reader["VaccineName"].ToString(),
                            VaccineType = reader["VaccineType"].ToString(),
                            NextVaccineDate = reader["NextVaccinationDate"].ToString()
                        });

                    }
                    reader.Close();
                    log.LogInformation("Count of animals, which need vaccinations in 3 days: " + vaccineNotifications.Count);

                    foreach (var vaccineNotification in vaccineNotifications)
                    {
                        var NotificationContent = $"<p>Animal name: {vaccineNotification.AnimalName}; Vaccine type: {vaccineNotification.VaccineType};"
                                              + $" Vaccine name: {vaccineNotification.VaccineName}; Vaccination date: {vaccineNotification.NextVaccineDate}</p>";

                        var content = Environment.GetEnvironmentVariable("UserVaccineNotificationContent") + NotificationContent;
                        var to = vaccineNotification.UserEmail;
                        var subject = Environment.GetEnvironmentVariable("VaccineSubject");

                        var response = await SendEmailAsync(to, subject, content);

                        log.LogInformation($"Email with vaccine notification to {vaccineNotification.UserEmail} has been sent");
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
