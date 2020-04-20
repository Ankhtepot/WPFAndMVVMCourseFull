using System.Collections.ObjectModel;

namespace TrainingApplication.Models
{
    public class Employee
    {
        public string UserId { get; set; }

        public string JobTitle { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string FullName { get; set; }

        public string EmployeeCode { get; set; }

        public string Region { get; set; }

        public string PhoneNo { get; set; }

        public string EmailIdee { get; set; }

        public bool ShowDetails { get; set; }

        public string Country { get; set; }

        public Employee()
        {
        }

    }
}
