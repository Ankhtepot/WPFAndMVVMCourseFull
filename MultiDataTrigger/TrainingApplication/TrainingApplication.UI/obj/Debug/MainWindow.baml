   M S B A M L   `   `   `  ����Q  MTrainingApplication.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrainingApplication.UITrainingApplication.UI  5   	   Y UTrainingApplication.ViewModels, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullwTclr-namespace:TrainingApplication.ViewModels;assembly=TrainingApplication.ViewModelsTrainingApplication.ViewModels 5   	   '    !TrainingApplication.UI.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:TrainingApplication.UI     5   	   k
viewmodelsTclr-namespace:TrainingApplication.ViewModels;assembly=TrainingApplication.ViewModels     5   	     � Title$#  Pee DEE International Limited��5	   	   $	��450��6/   $	��800��6<    � DataContext 5
      7  1TrainingApplication.ViewModels.EmployeesViewModel  5   
    � 	Resources 5      =  7System.Windows.Controls.Primitives.DataGridColumnHeader �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius*  $System.Windows.Controls.DataGridCell   CollectionDataGridCell��%  '        &	  O    �� 5   
   "  6   .�5      ��  � �� 5      �� 5      "  6&   .R�5      �� 
��� d �._�5      �� $ 2��6%   $��2q�66   
���   �
��� d �._�5   "   � .+�5   &   �� #��z��60   $��Center=�6Q   $��Center=�6l   
�������5   '   5   #   5      5      5      5      5      �� 5   
   "  6   .�5      ��  � �� 5       �� 5!      "  6&   .R�5"      �� 
��� d �._�5#      �� 6)   5$      5%      5'      5(      5)      .��5*      � .+�5+   
   � $��0��6    � ColumnDefinitions 5,      �� 5-      $��* �6#   �� 5.      $��5 �6#   �� 5/      $��* �6#   .+�51      �� $ 6��6   $��1q�6&   
�������$��0��6N   $��2q�6^   ._�52      &   System.Windows.Controls.DataGrid  	   AutoGenerateColumns	 .  
   AlternatingRowBackground

 ����� �� AlternationCount$ 1��53   <   ��52      ��  �� Path$ 	Employees� �� SelectedItem 54      �� $ ItemSelected�   Columns 55      0  *System.Windows.Controls.DataGridTextColumn  56      ,  &System.Windows.Controls.DataGridColumn   Header$ 
First Name��6-   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6A   �� *	FirstName+  57      $ 	Last Name��6-    6@   �� *
LastName+  58      $ 	Full Name��6-    6@   �� *
FullName+  59      $ 	Job Title��6-    6@   �� *
JobTitle+  5:      $ Employee Code��6-    6D   �� *EmployeeCode+  5;      $ Employee Code��6-      	CellStyle# [  6e    6D   �� *EmployeeCode+6e   5=      5>      �� 5?      $��1��6    �� ResizeDirection$ Columns=�6+   $��Stretch=�6E   $��55��6c   
���� ��$��Center=�6�   �� 5@      $��2��6   $ 6��6%   $��2q�66   
�������$��1q�6T    5A      9   3TrainingApplication.UI.BooleanToVisibilityConverter   booleanToVisibilityConverter3	   -TrainingApplication.UI.EmployeeJobDescription  jobDescriptionConverter��%:   &	       &	        5B      69   	  5C      63   5D      ._�5E      �  � RowDefinitions 5F      �� 5G      $
��Auto �6(   �� 5H      .+�5K      � $��0��6    5L       �� Triggers �� Binding �� Value ^� 
Conditions �� Binding �� Value��%  '��       �� 5M      " ��6$    5N   "   �� 5O   &    62   �� $ Country�	 China6S   .a�5P   *   ��  � ��
 �����6G   5Q   '   ^� 5R   &    5S   *   �� 5T   .    68   �� $ Country�	 India6Y   �� 5U   .    68   �� $ Region� 	Bangalore6X   .0�5W   *   ��  � ��
 � E��6G   5X   '   ^� 5Y   &    5Z   *   �� 5[   .    68   �� $ Country� US6Y   �� 5\   .    68   �� $ Region� CA6X   .0�5^   *   ��  � ��
 ��U��6G   5_   '   5a      5b      .+�5c      ��  �� DisplayMemberPath$ FullName��6D   ��6"   �� *	Employees+6c   5d      � 5e      $��1��6@    6   �� *ItemSelected+ 5f        violettextBox��%�   &	       '�� J     �� 5g      " ��6$   .�5h   "   ��  � ��
 ��+��6G   5i      �� 5j      " ��6$   .�5k   "   ��  � ��
 �����6E   5l      5m       5n      �� 5o      $
��Auto �6,   �� 5p      $
��Auto �6,   �� 5q      $
��Auto �6,   �� 5r      $
��Auto �6,   �� 5s      $
��Auto �6,   �� 5t      $
��Auto �6,   �� 5u      $
��Auto �6,   �� 5v      $
��Auto �6,   �� 5w      $
��Auto �6,    5y      �� 5z      $
��Auto �6/   �� 5{      .+�5}      �� $��
First Name��6    $��0��65   $��0��6B   �� 5~      $��0��6=   $��1��6J   $	��0.5q�6Z   #��[ 6g   ��6"   �� *	FirstName+6g   �� 5      $��	Last Name��6    $��1��64   $��0��6A   �� 5�      $��1��6<   $��1��6I   $	��0.5q�6Y   ��6"   �� *
LastName+6Y   �� 5�      $��	Job Title��6    $��2��64   $��0��6A   �� 5�      $��2��6"   $��1��6/   $	��0.5q�6?   .��6L   ��5�      `� 5�   "    `� 	Converter# [ 6/   .1�5�   &   �� $ JobTitle�6.   6@   �� 5�   &   $ EmployeeCode�6.   6D   5�   #   .��5�   ,   5�      �� 5�      $��UserId��6    $��3��61   $��0��6>   �� 5�      $��3��6:   $��1��6G   $	��0.5q�6W   ��6"   �� *UserId+6W   �� 5�      $��	Full Name��6    $��4��64   $��0��6A   �� 5�      $��4��6<   $��1��6I   $	��0.5q�6Y   ��6"   �� *
FullName+6Y   �� 5�      $��Region��6    $��6��61   $��0��6>   �� 5�      $��6��6:   $��1��6G   $	��0.5q�6W   ��6"   �� *Region+6W   �� 5�      $��
Contact No��6    $��7��65   $��0��6B   y�6R   �� $ ShowDetails� �� 	Converter# [ �� 5�      $��7��6;   $��1��6H   $	��0.5q�6X   ��6"   �� *	PhoneNo+y�6f   �� $ ShowDetails�# [ �� 5�      $��
Email Idee��6    $��8��65   $��0��6B   y�6S   �� $ ShowDetails�# [ �� 5�      $��8��6=   $��1��6J   $	��0.5q�6Z   ��6"   �� *	EmailIdee+y�6h   �� $ ShowDetails�# [ 5�      5�      5�      5�      5�      5�      