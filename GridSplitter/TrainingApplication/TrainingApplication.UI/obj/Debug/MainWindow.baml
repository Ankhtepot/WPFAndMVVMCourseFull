   M S B A M L   `   `   `  ����Q  MTrainingApplication.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrainingApplication.UITrainingApplication.UI  5   	   Y UTrainingApplication.ViewModels, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullwTclr-namespace:TrainingApplication.ViewModels;assembly=TrainingApplication.ViewModelsTrainingApplication.ViewModels 5   	   '    !TrainingApplication.UI.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:TrainingApplication.UI     5   	   k
viewmodelsTclr-namespace:TrainingApplication.ViewModels;assembly=TrainingApplication.ViewModels     5   	     � Title$#  Pee DEE International Limited��5	   	   $	��450��6/   $	��800��6<    � DataContext 5
      7  1TrainingApplication.ViewModels.EmployeesViewModel  5   
   .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��5 �6   �� 5      $��* �6   .+�5   
   ��  �� CornerRadius$ 6��6   $��1q�6"   
�������$��0��6J   $��2q�6Z   ._�5      &   System.Windows.Controls.DataGrid     AutoGenerateColumns .  ��6   ��  �� Path$ 	Employees� �� SelectedItem 5      �� $ ItemSelected�   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 
First Name��6)   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6=   �� *	FirstName+  5      $ 	Last Name��6)   	 6<   �� *
LastName+  5      $ 	Full Name��6)   	 6<   �� *
FullName+  5      $ Contact Number��6)   	 6A   �� *	PhoneNo+  5      $ 
Email Idee��6)   	 6=   �� *	EmailIdee+5      5>      �� 5?   
   $��1��6   
 �� ResizeDirection$
 Columns=�5@      $��Stretch=�5A      $��55��5B      
���� ��$��Center=�5D      �� 5F   
   $��2��6   $ 6��6!   $��2q�62   
�������$��1q�6P   ._�5G      �  6   �� *ItemSelected+ � RowDefinitions 5H      �� 5I      $
��Auto �6$   �� 5J      $
��Auto �6$   �� 5K      $
��Auto �6$   �� 5L      $
��Auto �6$   �� 5M      $
��Auto �6$   �� 5N      $
��Auto �6$   �� 5O      $
��Auto �6$   �� 5P      $
��Auto �6$   �� 5Q      $
��Auto �6$    5S      �� 5T      $
��Auto �6'   �� 5U      .+�5W      �� $��
First Name��6   $��0��6-   $��0��6:   �� 5X      $��0��65   $��1��6B   ��6   �� *	FirstName+6B   �� 5Y      $��	Last Name��6   $��1��6,   $��0��69   �� 5Z      $��1��64   $��1��6A   ��6   �� *
LastName+6A   �� 5[      $��	Job Title��6   $��2��6,   $��0��69   �� 5\      $��2��64   $��1��6A   ��6   �� *
JobTitle+6A   �� 5]      $��UserId��6   $��3��6)   $��0��66   �� 5^      $��3��62   $��1��6?   ��6   �� *UserId+6?   �� 5_      $��	Full Name��6   $��4��6,   $��0��69   �� 5`      $��4��64   $��1��6A   ��6   �� *
FullName+6A   �� 5a      $��Employee Code��6   $��5��60   $��0��6=   �� 5b      $��5��68   $��1��6E   ��6   �� *EmployeeCode+6E   �� 5c      $��Region��6   $��6��6)   $��0��66   �� 5d      $��6��62   $��1��6?   ��6   �� *Region+6?   �� 5e      $��
Contact No��6   $��7��6-   $��0��6:   �� 5f      $��7��63   $��1��6@   ��6   �� *	PhoneNo+6@   �� 5g      $��
Email Idee��6   $��8��6-   $��0��6:   �� 5h      $��8��65   $��1��6B   ��6   �� *	EmailIdee+6B   5i      5j      5k      5l      