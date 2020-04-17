using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Windows.Input;

using Newtonsoft.Json;

using TrainingApplication.Core;
using TrainingApplication.Models;

namespace TrainingApplication.ViewModels
{
    public class EmployeesViewModel
    {
        private Employee itemSelected;

        public ObservableCollection<Employee> Employees { get; set; }

        public Employee ItemSelected
        {
            get
            {
                return itemSelected;
            }

            set
            {
                this.itemSelected = value;
               // MessageBox.Show(string.Format("The Employee Selected is {0} {1}", this.itemSelected.FirstName, this.itemSelected.LastName));
            }
        } 

        public ICommand AddEmployee { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Age { get; set; }

        public EmployeesViewModel()
        {
            this.Employees = new ObservableCollection<Employee>();

            this.AddEmployee = new RelayCommand((parameter) => {
                // Code to add new employees to the colleciton.
            });

            PopulateStaticData();

            this.ItemSelected = this.Employees.FirstOrDefault(item => item.FullName == "Hope Joy");
        }        

        private void PopulateStaticData()
        {
            using (StreamReader reader = new StreamReader(@"..\..\..\TrainingApplication.Models\Data\Employees.json"))
            {
                var employeesJson = reader.ReadToEnd();
                Organisation organisation = JsonConvert.DeserializeObject<Organisation>(employeesJson);
                foreach (var employee in organisation.Employees)
                {
                    this.Employees.Add(employee);
                }
            }
        }
    }
}
