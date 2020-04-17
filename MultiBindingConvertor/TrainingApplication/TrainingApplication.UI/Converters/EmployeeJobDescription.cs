using System;
using System.Globalization;
using System.Windows.Data;

namespace TrainingApplication.UI
{
    public class EmployeeJobDescription : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            var jobTitle = values[0];
            var employeeCode = values[1];

            return jobTitle + " - " + employeeCode;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
