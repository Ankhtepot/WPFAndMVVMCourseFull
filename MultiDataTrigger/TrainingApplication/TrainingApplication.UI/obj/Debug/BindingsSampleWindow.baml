   M S B A M L   `   `   `  ����Y  UTrainingApplication.ViewModels, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullwTclr-namespace:TrainingApplication.ViewModels;assembly=TrainingApplication.ViewModelsTrainingApplication.ViewModels  5   	   Q MTrainingApplication.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrainingApplication.UITrainingApplication.UI 5   	   1   +TrainingApplication.UI.BindingsSampleWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   k
viewmodelsTclr-namespace:TrainingApplication.ViewModels;assembly=TrainingApplication.ViewModels     5   	   6local$clr-namespace:TrainingApplication.UI     5   	     � Title$  BindingsSampleWindow��5	   	   $	��450��6&   $	��800��63    � DataContext 5
      <   6TrainingApplication.ViewModels.BindingsSampleViewModel  5   
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
�������$��1q�6T    5A      9  3TrainingApplication.UI.BooleanToVisibilityConverter   booleanToVisibilityConverter3	  -TrainingApplication.UI.EmployeeJobDescription  jobDescriptionConverter��%:   &	       &	        5B      69   	  5C      63   5D      ._�5E      �  6   �� *ItemSelected+ 5F        violettextBox��%�   &	       '�� J     �� 5G      " ��6    .�5H      ��  � ��
 ��+��6C   5I      �� 5J      " ��6    .�5K      ��  � ��
 �����6A   5L      5M       � RowDefinitions 5N      �� 5O      $
��Auto �6(   �� 5P      $
��Auto �6(   �� 5Q      $
��Auto �6(   �� 5R      $
��Auto �6(   �� 5S      $
��Auto �6(   �� 5T      $
��Auto �6(    5V      �� 5W      $
��Auto �6+   �� 5X      .+�5Z      �� $��
First Name��6   $��0��61   $��0��6>   �� 5[      $��0��6F   $��1��6S   $	��0.5q�6c   #��[ 6p   ��6   �� *	FirstName+ �� Mode$ TwoWay=�6p   �� 5\      $��	Last Name��6   $��1��60   $��0��6=   �� 5]      $��1��6F   $��1��6S   $	��0.5q�6c   ��6   �� *
LastName+$ Default=�6c   �� 5^      $��UserId��6   $��2��6-   $��0��6:   �� 5_      $��2��6C   $��1��6P   $	��0.5q�6`   ��6   �� *UserId+$ OneWay=�6`   �� 5`      $��	Full Name��6   $��3��60   $��0��6=   �� 5a      $��3��6F   $��1��6S   $	��0.5q�6c   ��6   �� *
FullName+$ OneTime=�6c   �� 5b      $��Comment��6   $��4��6.   $��0��6;   �� 5c      $��4��6L   $��1��6Y   $	��0.5q�6i   ��6   �� *	Comment+$ OneWayToSource=�6i   �� 5d      $��Toggle Temp Values��6   $��5��6:   $��1��6G   $	��0.5q�6W   $
��Auto��6d   ��6q   �� *ToggleTempValues+5e      5f      5g      5h      5i      