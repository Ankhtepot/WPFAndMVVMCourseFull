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
�������$��1q�6P    � 	Resources 5B      9   3TrainingApplication.UI.BooleanToVisibilityConverter    booleanToVisibilityConverter3   -TrainingApplication.UI.EmployeeJobDescription  jobDescriptionConverter��%:   &	        &	        5C      65     5D      6/   5E      ._�5F      �  6   �� *ItemSelected+ 5G       �� 
TargetType  violettextBox �� Property �� Value��%�   &	       '�� J     �� 5H      " ��6   .�5I      ��  � ��
 ��+��6?   5J      �� 5K      " ��6   .�5L      ��  � ��
 �����6=   5M      5N       � RowDefinitions 5O      �� 5P      $
��Auto �6$   �� 5Q      $
��Auto �6$   �� 5R      $
��Auto �6$   �� 5S      $
��Auto �6$   �� 5T      $
��Auto �6$   �� 5U      $
��Auto �6$   �� 5V      $
��Auto �6$   �� 5W      $
��Auto �6$   �� 5X      $
��Auto �6$    5Z      �� 5[      $
��Auto �6'   �� 5\      .+�5^      �� $��
First Name��6   $��0��6-   $��0��6:   �� 5_      $��0��65   $��1��6B   $	��0.5q�6R   #��[ 6_   ��6   �� *	FirstName+6_   �� 5`      $��	Last Name��6   $��1��6,   $��0��69   �� 5a      $��1��64   $��1��6A   $	��0.5q�6Q   ��6   �� *
LastName+6Q   �� 5b      $��	Job Title��6   $��2��6,   $��0��69   �� 5c      $��2��6   $��1��6'   $	��0.5q�67   .��6D   ��5d      `� 5e       `� 	Converter# [ 6'   .1�5f      �� $ JobTitle�6&   68   �� 5g      $ EmployeeCode�6&   6<   5h      .��5i   $   5j      �� 5k      $��UserId��6   $��3��6)   $��0��66   �� 5l      $��3��62   $��1��6?   $	��0.5q�6O   ��6   �� *UserId+6O   �� 5m      $��	Full Name��6   $��4��6,   $��0��69   �� 5n      $��4��64   $��1��6A   $	��0.5q�6Q   ��6   �� *
FullName+6Q   �� 5q      $��Region��6   $��6��6)   $��0��66   �� 5r      $��6��62   $��1��6?   $	��0.5q�6O   ��6   �� *Region+6O   �� 5s      $��
Contact No��6   $��7��6-   $��0��6:   y�6J   �� $ ShowDetails� �� 	Converter# [  �� 5t      $��7��63   $��1��6@   $	��0.5q�6P   ��6   �� *	PhoneNo+y�6^   �� $ ShowDetails�# [  �� 5u      $��
Email Idee��6   $��8��6-   $��0��6:   y�6K   �� $ ShowDetails�# [  �� 5v      $��8��65   $��1��6B   $	��0.5q�6R   ��6   �� *	EmailIdee+y�6`   �� $ ShowDetails�# [  5w      5x      5y      5z      