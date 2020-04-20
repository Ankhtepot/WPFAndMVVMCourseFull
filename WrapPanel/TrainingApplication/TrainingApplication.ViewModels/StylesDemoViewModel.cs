using System.ComponentModel;

namespace TrainingApplication.ViewModels
{
    public class StylesDemoViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        public StylesDemoViewModel()
        {
            // TODO
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
