   M S B A M L   `   `   `  ����Q  MTrainingApplication.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrainingApplication.UITrainingApplication.UI  5   	   Y UTrainingApplication.ViewModels, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullwTclr-namespace:TrainingApplication.ViewModels;assembly=TrainingApplication.ViewModelsTrainingApplication.ViewModels 5   	   '    !TrainingApplication.UI.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:TrainingApplication.UI     5   	   k
viewmodelsTclr-namespace:TrainingApplication.ViewModels;assembly=TrainingApplication.ViewModels     5   	     � Title$#  Pee DEE International Limited��5	   	   $	��450��6/   $	��800��6<    � DataContext 5
      7  1TrainingApplication.ViewModels.EmployeesViewModel  5   
   .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��5 �6   �� 5      $��* �6   .+�5   
   ��  �� CornerRadius$ 6��6   $��1q�6"   
�������$��0��6J   $��2q�6Z   ._�5      &   System.Windows.Controls.DataGrid     AutoGenerateColumns .     AlternatingRowBackground
 ����� �� AlternationCount$ 1��5   <   ��5      ��  �� Path$ 	Employees� �� SelectedItem 5      �� $ ItemSelected�	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$
 
First Name��6)   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *	FirstName+  5      $
 	Last Name��6)    6<   �� *
LastName+  5      $
 	Full Name��6)    6<   �� *
FullName+  5      $
 	Job Title��6)    6<   �� *
JobTitle+  5      $
 Employee Code��6)    6@   �� *EmployeeCode+5      5?      �� 5@   
   $��1��6    �� ResizeDirection$ Columns=�6'   $��Stretch=�6A   $��55��6_   
���� ��$��Center=�6   �� 5A   
   $��2��6   $ 6��6!   $��2q�62   
�������$��1q�6P    � 	Resources 5B      9   3TrainingApplication.UI.BooleanToVisibilityConverter    booleanToVisibilityConverter��%   &	          5C      65   5D      ._�5E      �  6   �� *ItemSelected+ � RowDefinitions 5F      �� 5G      $
��Auto �6$   �� 5H      $
��Auto �6$   �� 5I      $
��Auto �6$   �� 5J      $
��Auto �6$   �� 5K      $
��Auto �6$   �� 5L      $
��Auto �6$   �� 5M      $
��Auto �6$   �� 5N      $
��Auto �6$   �� 5O      $
��Auto �6$    5Q      �� 5R      $
��Auto �6'   �� 5S      .+�5U      �� $��
First Name��6   $��0��6-   $��0��6:   �� 5V      $��0��65   $��1��6B   $	��0.5q�6R   ��6   �� *	FirstName+6R   �� 5W      $��	Last Name��6   $��1��6,   $��0��69   �� 5X      $��1��64   $��1��6A   $	��0.5q�6Q   ��6   �� *
LastName+6Q   �� 5Y      $��	Job Title��6   $��2��6,   $��0��69   �� 5Z      $��2��64   $��1��6A   $	��0.5q�6Q   ��6   �� *
JobTitle+6Q   �� 5[      $��UserId��6   $��3��6)   $��0��66   �� 5\      $��3��62   $��1��6?   $	��0.5q�6O   ��6   �� *UserId+6O   �� 5]      $��	Full Name��6   $��4��6,   $��0��69   �� 5^      $��4��64   $��1��6A   $	��0.5q�6Q   ��6   �� *
FullName+6Q   �� 5_      $��Employee Code��6   $��5��60   $��0��6=   �� 5`      $��5��68   $��1��6E   $	��0.5q�6U   ��6   �� *EmployeeCode+6U   �� 5a      $��Region��6   $��6��6)   $��0��66   �� 5b      $��6��62   $��1��6?   $	��0.5q�6O   ��6   �� *Region+6O   �� 5c      $��
Contact No��6   $��7��6-   $��0��6:   y�6J   �� $ ShowDetails� �� 	Converter# [  �� 5d      $��7��63   $��1��6@   $	��0.5q�6P   ��6   �� *	PhoneNo+y�6^   �� $ ShowDetails�# [  �� 5e      $��
Email Idee��6   $��8��6-   $��0��6:   y�6K   �� $ ShowDetails�# [  �� 5f      $��8��65   $��1��6B   $	��0.5q�6R   ��6   �� *	EmailIdee+y�6`   �� $ ShowDetails�# [  5g      5h      5i      5j      