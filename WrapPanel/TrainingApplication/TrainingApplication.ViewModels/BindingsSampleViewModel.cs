using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Windows.Input;

using Newtonsoft.Json;

using TrainingApplication.Core;
using TrainingApplication.Models;

namespace TrainingApplication.ViewModels
{
    public class BindingsSampleViewModel
    {
        public ObservableCollection<EmployeeViewModel> Employees { get; set; }

        public bool HideEmail { get; set; }

        public EmployeeViewModel ItemSelected
        {
            get;
            set;
        } 

        public ICommand AddEmployee { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Age { get; set; }

        public BindingsSampleViewModel()
        {
            this.Employees = new ObservableCollection<EmployeeViewModel>();
            this.HideEmail = true;

            this.AddEmployee = new RelayCommand((parameter) => {
                // Code to add new employees to the colleciton.
            });

            PopulateStaticData();

            // Work With Selected Index.
            this.ItemSelected = this.Employees.Where(item => item.FullName == "Hope Joy").FirstOrDefault();
        }        

        private void PopulateStaticData()
        {
            using (StreamReader reader = new StreamReader(@".\Data\Employees.json"))
            {
                var employeesJson = reader.ReadToEnd();
                Organisation organisation = JsonConvert.DeserializeObject<Organisation>(employeesJson);
                foreach (var employee in organisation.Employees)
                {
                    this.Employees.Add(new EmployeeViewModel(employee));
                }
            }
        }
    }
}
