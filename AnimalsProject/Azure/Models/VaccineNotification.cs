
namespace AzureFunctions.Models
{
    class VaccineNotification
    {
        public string UserEmail { get; set; }
        public string AnimalName { get; set; }
        public string VaccineName { get; set; }
        public string VaccineType { get; set; }
        public string NextVaccineDate { get; set; }
    }
}
