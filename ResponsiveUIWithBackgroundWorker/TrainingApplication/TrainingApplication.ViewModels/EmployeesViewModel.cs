using System;
using System.ComponentModel;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Threading;
using System.Windows.Input;

using Newtonsoft.Json;

using TrainingApplication.Core;
using TrainingApplication.Models;

namespace TrainingApplication.ViewModels
{
    public class EmployeesViewModel
    {
        private EmployeeViewModel itemSelected;
        private BackgroundWorker backgroundWorker = new BackgroundWorker();

        public ObservableCollection<EmployeeViewModel> Employees { get; set; }

        public bool HideEmail { get; set; }

        public EmployeeViewModel ItemSelected
        {
            get
            {
                return itemSelected;
            }

            set
            {
                itemSelected = value;
               // MessageBox.Show(string.Format("The EmployeeViewModel Selected is {0} {1}", this.itemSelected.FirstName, this.itemSelected.LastName));
            }
        } 

        public ICommand AddEmployee { get; set; }

        public ICommand LoadData { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Age { get; set; }

        public EmployeesViewModel()
        {
            Employees = new ObservableCollection<EmployeeViewModel>();
            HideEmail = true;
            backgroundWorker.DoWork += FethData;
            backgroundWorker.WorkerReportsProgress = true;
            backgroundWorker.ProgressChanged += UpdateTheUserInterface;
            backgroundWorker.RunWorkerCompleted += BackgroundWorker_RunWorkerCompleted;

            AddEmployee = new RelayCommand((parameter) => {
                // Code to add new employees to the colleciton.
            });

            // this.CreateJSonDB();

            LoadData = new RelayCommand((parameter) =>
            {
                // Code to add new employees to the colleciton.
                backgroundWorker.RunWorkerAsync();
            });

            // Work With Selected Index.
            ItemSelected = Employees.Where(item => item.FullName == "Hope Joy").FirstOrDefault();
        }

        private void BackgroundWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
        }

        private void UpdateTheUserInterface(object sender, ProgressChangedEventArgs e)
        {
            Employees.Add((EmployeeViewModel)e.UserState);
        }

        private void FethData(object sender, DoWorkEventArgs e)
        {
            PopulateStaticData();
        }

        #region - Creating A Huge JSon DB. - Use this code to create your own sample data with first names and last names.

        private void CreateJSonDB()
        {
            var destinationDirectory = Directory.CreateDirectory(@".\NamesDB\");

            var firstNamesPrefix = @"C:\Users\Kanthi_Pavan_dudday\Downloads\NameDatabases\NameDatabases-master\NamesDatabases\first names\";
            var lastNamesPrefix = @"C:\Users\Kanthi_Pavan_dudday\Downloads\NameDatabases\NameDatabases-master\NamesDatabases\surnames\";

            CreateEmployeeDB(firstNamesPrefix + "es.txt", lastNamesPrefix + "es.txt", "Spain", "UX Engineer", "UX Designer", "Valencia", "Spanish.json");
            CreateEmployeeDB(firstNamesPrefix + "us.txt", lastNamesPrefix + "us.txt", "United States", "Engineer", "Development Manager", "CA", "UnitedStates.json");
            CreateEmployeeDB(firstNamesPrefix + "uk.txt", lastNamesPrefix + "us.txt", "India", "Engineer", "Development Leader", "BLR", "India.json");
            CreateEmployeeDB(firstNamesPrefix + "ne.txt", lastNamesPrefix + "fr.txt", "France", "Project Management", "Project Manager", "Paris", "France.json");
            CreateEmployeeDB(firstNamesPrefix + "it.txt", lastNamesPrefix + "il.txt", "Israel", "Innovation", "Innovation Engineer", "Jerusalem", "Israel.json");
            CreateEmployeeDB(firstNamesPrefix + "kr.txt", lastNamesPrefix + "de.txt", "Germany", "Architecture", "Software Architect", "BR", "Germany.json");
        }

        private static void CreateEmployeeDB(string firstNamesSourceFile, string lastNameSourceFile, string countryName, string employeeCode, string jobTitle, string region, string outputFile)
        {
            string[] employeeCodes = { "UXE", "E2", "DL", "PM", "Innovation", "A1" };
            string[] titles = { "UX Engineer", "Engineer", "Development Leader", "Project Manager", "Innovation Engineer", "Software Architect" };

            using (StreamReader streamReader = new StreamReader(lastNameSourceFile))
            using (StreamReader reader = new StreamReader(firstNamesSourceFile))
            {
                var firstNames = reader.ReadToEnd().Split(new char[] { '\n', '\r' }, StringSplitOptions.RemoveEmptyEntries);
                var lastNames = streamReader.ReadToEnd().Split(new char[] { '\n', '\r' }, StringSplitOptions.RemoveEmptyEntries);
                Organisation organisation = new Organisation() { Employees = new System.Collections.Generic.List<Employee>(), OrgName = "Pe Dee International Pvt Ltd" };

                for (int index = 0; index < firstNames.Length && index < lastNames.Length; index++)
                {
                    var firstName = firstNames[index];
                    var lastName = lastNames[index];
                    organisation.Employees.Add(new Employee()
                    {
                        Country = countryName,
                        EmployeeCode = employeeCodes[index % employeeCodes.Length],
                        JobTitle = titles[index % titles.Length],
                        ShowDetails = true,
                        Region = region,
                        FirstName = firstName,
                        LastName = lastName,
                        EmailIdee = firstName + lastName + "@pedee.com",
                        FullName = firstName + " " + lastName,
                        UserId = (firstName + lastName[0]).ToLower()
                    });
                }

                var resultantJsonFile = JsonConvert.SerializeObject(organisation);
                using (StreamWriter streamWriter = new StreamWriter(@"C:\Users\Kanthi_Pavan_dudday\Downloads\NameDatabases\NameDatabases-master\NamesDatabases\" + outputFile))
                {
                    streamWriter.Write(resultantJsonFile);
                }
            }
        }

        #endregion

        private void PopulateStaticData()
        {
            var fileList = Directory.GetFiles(@"..\..\..\TrainingApplication.Models\Data\");

            foreach (var file in fileList)
            {
                using (StreamReader reader = new StreamReader(file))
                {
                    var employeesJson = reader.ReadToEnd();
                    Organisation organisation = JsonConvert.DeserializeObject<Organisation>(employeesJson);
                    foreach (var employee in organisation.Employees)
                    {
                        Thread.Sleep(200);
                        backgroundWorker.ReportProgress(0, new EmployeeViewModel(employee));
                        // Employees.Add(new EmployeeViewModel(employee));
                    }
                }

            }
        }
    }
}
                                