using System.ComponentModel;
using System.Windows.Input;
using TrainingApplication.Core;
using TrainingApplication.Models;

namespace TrainingApplication.ViewModels
{
    public class EmployeeViewModel : INotifyPropertyChanged
    {
        private readonly Employee employee;
        private string comment;

        public event PropertyChangedEventHandler PropertyChanged;

        public string FirstName
        {
            get { return employee.FirstName; }
            set
            {
                employee.FirstName = value;
                OnPropertyRaised("FirstName");
            }
        }

        public string LastName
        {
            get => employee.LastName; 
            set
            {
                employee.LastName = value;
                // this.OnPropertyRaised("LastName");
            }
        }


        public string FullName { get => employee.FullName;
            set
            {
                employee.FullName = value;
                OnPropertyRaised("FullName");
            }
        }


        public string UserId { get => employee.UserId; set
            {
                employee.UserId = value;
                OnPropertyRaised("UserId");
            }
        }

        public string JobTitle
        {
            get => employee.JobTitle; set
            {
                employee.UserId = value;
                OnPropertyRaised("JobTitle");
            }
        }

        public string EmployeeCode
        {
            get => employee.EmployeeCode; set
            {
                employee.EmployeeCode = value;
                OnPropertyRaised("EmployeeCode");
            }
        }

        public string EmailIdee
        {
            get => employee.EmailIdee; set
            {
                employee.EmailIdee = value;
                OnPropertyRaised("EmailIdee");
            }
        }

        public string Country
        {
            get => employee.Country; set
            {
                employee.Country = value;
                OnPropertyRaised("Country");
            }
        }

        public string Region
        {
            get => employee.Region; set
            {
                employee.Region = value;
                OnPropertyRaised("Region");
            }
        }

        public string Comment { get => comment; set
            {
                comment = value;
                OnPropertyRaised("Comment");
            }
        }

        public ICommand ToggleTempValues { get; set; }

        public EmployeeViewModel(Employee model)
        {
            employee = model;
            Comment = "WPF Training";
            string temp = "Temp ";

            ToggleTempValues = new RelayCommand((parameter) => {
                // Code to add new employees to the colleciton.
                if (FirstName.StartsWith(temp))
                {
                    FirstName = FirstName.Remove(0, 5);
                    LastName = LastName.Remove(0, 5);
                    UserId = UserId.Remove(0, 5);
                    FullName = FullName.Remove(0, 5);
                    Comment = "Changes through code.";
                }
                else
                {
                    FirstName = temp + FirstName;
                    LastName = temp + LastName;
                    UserId = temp + UserId;
                    FullName = temp + FullName;
                    Comment = temp + "Changes through code.";
                }

            });
        }

        private void OnPropertyRaised(string propertyname)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyname));
            }
        }
    }
}
