   M S B A M L   `   `   `  ����Q  MTrainingApplication.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrainingApplication.UITrainingApplication.UI  5   	   Y UTrainingApplication.ViewModels, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullwTclr-namespace:TrainingApplication.ViewModels;assembly=TrainingApplication.ViewModelsTrainingApplication.ViewModels 5   	   '    !TrainingApplication.UI.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:TrainingApplication.UI     5   	   k
viewmodelsTclr-namespace:TrainingApplication.ViewModels;assembly=TrainingApplication.ViewModels     5   	     � Title$#  Pee DEE International Limited��5	   	   $	��450��5
   	   $	��800��5   	    � DataContext 5      7  1TrainingApplication.ViewModels.EmployeesViewModel  5   
   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� CornerRadius$ 6��6   $��1q�5      
�������$��0��5      $��2q�5      ._�5      &   System.Windows.Controls.DataGrid     AutoGenerateColumns .  $	��275��5      $
��Left=�5      ��5      ��  �� Path$ 	Employees� �� SelectedItem 5      �� $ ItemSelected�   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5       ,  &System.Windows.Controls.DataGridColumn   Header$ 
First Name��6)   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6=   �� *	FirstName+6]     5!      $ 
First Name��6)   	 6=   �� *
LastName+6\     5"      $ 	Full Name��6)   	 6<   �� *
FullName+6[   5$      5K      �� 5L   
   $��1��6   $ 6��5M      $��2q�5N      
�������$��1q�5P      ._�5Q      �  6   �� *ItemSelected+
 � RowDefinitions
 5R      �� 5S      $
��Auto �6$   �� 5T      $
��Auto �6$   �� 5U      $
��Auto �6$   �� 5V      $
��Auto �6$   �� 5W      $
��Auto �6$   �� 5X      $
��Auto �6$   �� 5Y      $
��Auto �6$   �� 5Z      $
��Auto �6$   �� 5[      $
��Auto �6$    5]      �� 5^      $
��Auto �6'   �� 5_      .+�5a      �� $��
First Name��6   $��0��6-   $��0��6:   �� 5b      $��0��65   $��1��6B   ��6   �� *	FirstName+6B   �� 5c      $��	Last Name��6   $��1��6,   $��0��69   �� 5d      $��1��64   $��1��6A   ��6   �� *
LastName+6A   �� 5e      $��	Job Title��6   $��2��6,   $��0��69   �� 5f      $��2��64   $��1��6A   ��6   �� *
JobTitle+6A   �� 5g      $��UserId��6   $��3��6)   $��0��66   �� 5h      $��3��62   $��1��6?   ��6   �� *UserId+6?   �� 5i      $��	Full Name��6   $��4��6,   $��0��69   �� 5j      $��4��64   $��1��6A   ��6   �� *
FullName+6A   �� 5k      $��Employee Code��6   $��5��60   $��0��6=   �� 5l      $��5��68   $��1��6E   ��6   �� *EmployeeCode+6E   �� 5m      $��Region��6   $��6��6)   $��0��66   �� 5n      $��6��62   $��1��6?   ��6   �� *Region+6?   �� 5o      $��
Contact No��6   $��7��6-   $��0��6:   �� 5p      $��7��63   $��1��6@   ��6   �� *	PhoneNo+6@   �� 5q      $��
Email Idee��6   $��8��6-   $��0��6:   �� 5r      $��8��65   $��1��6B   ��6   �� *	EmailIdee+6B   5s      5t      5u      5v      