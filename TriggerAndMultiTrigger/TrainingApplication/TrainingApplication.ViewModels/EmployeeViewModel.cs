﻿using System.ComponentModel;
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
            get { return this.employee.FirstName; }
            set
            {
                this.employee.FirstName = value;
                this.OnPropertyRaised("FirstName");
            }
        }

        public string LastName
        {
            get => this.employee.LastName; 
            set
            {
                this.employee.LastName = value;
                // this.OnPropertyRaised("LastName");
            }
        }


        public string FullName { get => this.employee.FullName;
            set
            {
                this.employee.FullName = value;
                this.OnPropertyRaised("FullName");
            }
        }


        public string UserId { get => this.employee.UserId; set
            {
                this.employee.UserId = value;
                this.OnPropertyRaised("UserId");
            }
        }

        public string Comment { get => comment; set
            {
                this.comment = value;
                this.OnPropertyRaised("Comment");
            }
        }

        public ICommand ToggleTempValues { get; set; }

        public EmployeeViewModel(Employee model)
        {
            this.employee = model;
            this.Comment = "WPF Training";
            string temp = "Temp ";

            this.ToggleTempValues = new RelayCommand((parameter) => {
                // Code to add new employees to the colleciton.
                if (this.FirstName.StartsWith(temp))
                {
                    this.FirstName = this.FirstName.Remove(0, 5);
                    this.LastName = this.LastName.Remove(0, 5);
                    this.UserId = this.UserId.Remove(0, 5);
                    this.FullName = this.FullName.Remove(0, 5);
                    this.Comment = "Changes through code.";
                }
                else
                {
                    this.FirstName = temp + this.FirstName;
                    this.LastName = temp + this.LastName;
                    this.UserId = temp + this.UserId;
                    this.FullName = temp + this.FullName;
                    this.Comment = temp + "Changes through code.";
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
