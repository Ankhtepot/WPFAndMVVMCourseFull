﻿using System.Collections.ObjectModel;

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

        public ObservableCollection<string> EmploymentType { get; set; }

        public Employee()
        {
            this.EmploymentType = new ObservableCollection<string>();
            this.EmploymentType.Add("Contract");
            this.EmploymentType.Add("Permanant");
        }

    }
}
