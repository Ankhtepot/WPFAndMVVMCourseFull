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
��� d �._�5#      �� 6)   5$      5%      5'      5(      5)      .��5*      � .+�5/   
   � $��0��6    � ColumnDefinitions 50      �� 51      $��* �6#   �� 52      $��5 �6#   �� 53      $��* �6#   .+�55      �� $ 6��6   $��1q�6&   
�������$��0��6N   $��2q�6^   ._�56      &   System.Windows.Controls.DataGrid  	   AutoGenerateColumns	 .  
   AlternatingRowBackground

 ����� �� AlternationCount$ 1��57   <   ��56      ��  �� Path$ 	Employees� �� SelectedItem 58      �� $ ItemSelected�   Columns 59      0  *System.Windows.Controls.DataGridTextColumn  5:      ,  &System.Windows.Controls.DataGridColumn   Header$ 
First Name��6-   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6A   �� *	FirstName+  5;      $ 	Last Name��6-    6@   �� *
LastName+  5<      $ 	Full Name��6-    6@   �� *
FullName+  5=      $ 	Job Title��6-    6@   �� *
JobTitle+  5>      $ Employee Code��6-    6D   �� *EmployeeCode+  5?      $ Employee Code��6-      	CellStyle# [  6e    6D   �� *EmployeeCode+6e   5A      5b      �� 5c      $��1��6    �� ResizeDirection$ Columns=�6+   $��Stretch=�6E   $��55��6c   
���� ��$��Center=�6�   �� 5d      $��2��6   $ 6��6%   $��2q�66   
�������$��1q�6T    5e      9   3TrainingApplication.UI.BooleanToVisibilityConverter   booleanToVisibilityConverter3	   -TrainingApplication.UI.EmployeeJobDescription  jobDescriptionConverter��%:   &	       &	        5f      69   	  5g      63   5h      ._�5i      �  6   �� *ItemSelected+ 5j        violettextBox��%�   &	       '�� J     �� 5k      " ��6    .�5l      ��  � ��
 ��+��6C   5m      �� 5n      " ��6    .�5o      ��  � ��
 �����6A   5p      5q       � RowDefinitions 5r      �� 5s      $
��Auto �6(   �� 5t      $
��Auto �6(   �� 5u      $
��Auto �6(   �� 5v      $
��Auto �6(   �� 5w      $
��Auto �6(   �� 5x      $
��Auto �6(   �� 5y      $
��Auto �6(   �� 5z      $
��Auto �6(   �� 5{      $
��Auto �6(    5}      �� 5~      $
��Auto �6+   �� 5      .+�5�      �� $��
First Name��6   $��0��61   $��0��6>   �� 5�      $��0��69   $��1��6F   $	��0.5q�6V   #��[ 6c   ��6   �� *	FirstName+6c   �� 5�      $��	Last Name��6   $��1��60   $��0��6=   �� 5�      $��1��68   $��1��6E   $	��0.5q�6U   ��6   �� *
LastName+6U   �� 5�      $��	Job Title��6   $��2��60   $��0��6=   �� 5�      $��2��6   $��1��6+   $	��0.5q�6;   .��6H   ��5�      `� 5�       `� 	Converter# [ 6+   .1�5�   "   �� $ JobTitle�6*   6<   �� 5�   "   $ EmployeeCode�6*   6@   5�      .��5�   (   5�      �� 5�      $��UserId��6   $��3��6-   $��0��6:   �� 5�      $��3��66   $��1��6C   $	��0.5q�6S   ��6   �� *UserId+6S   �� 5�      $��	Full Name��6   $��4��60   $��0��6=   �� 5�      $��4��68   $��1��6E   $	��0.5q�6U   ��6   �� *
FullName+6U   �� 5�      $��Region��6   $��6��6-   $��0��6:   �� 5�      $��6��66   $��1��6C   $	��0.5q�6S   ��6   �� *Region+6S   �� 5�      $��
Contact No��6   $��7��61   $��0��6>   y�6N   �� $ ShowDetails� �� 	Converter# [ �� 5�      $��7��67   $��1��6D   $	��0.5q�6T   ��6   �� *	PhoneNo+y�6b   �� $ ShowDetails�# [ �� 5�      $��
Email Idee��6   $��8��61   $��0��6>   y�6O   �� $ ShowDetails�# [ �� 5�      $��8��69   $��1��6F   $	��0.5q�6V   ��6   �� *	EmailIdee+y�6d   �� $ ShowDetails�# [ 5�      5�      5�      5�      5�      