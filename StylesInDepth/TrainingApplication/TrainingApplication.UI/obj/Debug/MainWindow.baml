   M S B A M L   `   `   `  ����Q  MTrainingApplication.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:TrainingApplication.UITrainingApplication.UI  5   	   Y UTrainingApplication.ViewModels, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullwTclr-namespace:TrainingApplication.ViewModels;assembly=TrainingApplication.ViewModelsTrainingApplication.ViewModels 5   	   '    !TrainingApplication.UI.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:TrainingApplication.UI     5   	   k
viewmodelsTclr-namespace:TrainingApplication.ViewModels;assembly=TrainingApplication.ViewModels     5   	     � Title$#  Pee DEE International Limited��5	   	   $	��450��6/   $	��800��6<    � DataContext 5
      7  1TrainingApplication.ViewModels.EmployeesViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      6   �� 5      6   .+�5   
   � $��0��6    � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $��5 �6#   �� 5      $��* �6#   .+�5      ��  �� CornerRadius$ 6��6   $��1q�6&   
�������$��0��6N   $��2q�6^   ._�5      &   System.Windows.Controls.DataGrid     AutoGenerateColumns .     AlternatingRowBackground
 ����� �� AlternationCount$ 1��5   <   ��5      ��  �� Path$ 	Employees�	 �� SelectedItem	 5      �� $ ItemSelected�
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 
First Name��6-   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6A   �� *	FirstName+  5      $ 	Last Name��6-    6@   �� *
LastName+  5      $ 	Full Name��6-    6@   �� *
FullName+  5       $ 	Job Title��6-    6@   �� *
JobTitle+  5!      $ Employee Code��6-    6D   �� *EmployeeCode+5#      5D      �� 5E      $��1��6    �� ResizeDirection$ Columns=�6+   $��Stretch=�6E   $��55��6c   
���� ��$��Center=�6�   �� 5F      $��2��6   $ 6��6%   $��2q�66   
�������$��1q�6T    � 	Resources 5G      9   3TrainingApplication.UI.BooleanToVisibilityConverter    booleanToVisibilityConverter3   -TrainingApplication.UI.EmployeeJobDescription  jobDescriptionConverter��%:   &	        &	        5H      69     5I      63   5J      ._�5K      �  6   �� *ItemSelected+ 5L       �� 
TargetType  violettextBox �� Property �� Value��%�   &	       '�� J     �� 5M      " ��6    .�5N      ��  � ��
 ��+��6C   5O      �� 5P      " ��6    .�5Q      ��  � ��
 �����6A   5R      5S       5T      �� 5U      $
��Auto �6(   �� 5V      $
��Auto �6(   �� 5W      $
��Auto �6(   �� 5X      $
��Auto �6(   �� 5Y      $
��Auto �6(   �� 5Z      $
��Auto �6(   �� 5[      $
��Auto �6(   �� 5\      $
��Auto �6(   �� 5]      $
��Auto �6(    5_      �� 5`      $
��Auto �6+   �� 5a      .+�5c      �� $��
First Name��6   $��0��61   $��0��6>   �� 5d      $��0��69   $��1��6F   $	��0.5q�6V   #��[ 6c   ��6   �� *	FirstName+6c   �� 5e      $��	Last Name��6   $��1��60   $��0��6=   �� 5f      $��1��68   $��1��6E   $	��0.5q�6U   ��6   �� *
LastName+6U   �� 5g      $��	Job Title��6   $��2��60   $��0��6=   �� 5h      $��2��6   $��1��6+   $	��0.5q�6;   .��6H   ��5i      `� 5j       `� 	Converter# [ 6+   .1�5k   "   �� $ JobTitle�6*   6<   �� 5l   "   $ EmployeeCode�6*   6@   5m      .��5n   (   5o      �� 5p      $��UserId��6   $��3��6-   $��0��6:   �� 5q      $��3��66   $��1��6C   $	��0.5q�6S   ��6   �� *UserId+6S   �� 5r      $��	Full Name��6   $��4��60   $��0��6=   �� 5s      $��4��68   $��1��6E   $	��0.5q�6U   ��6   �� *
FullName+6U   �� 5v      $��Region��6   $��6��6-   $��0��6:   �� 5w      $��6��66   $��1��6C   $	��0.5q�6S   ��6   �� *Region+6S   �� 5x      $��
Contact No��6   $��7��61   $��0��6>   y�6N   �� $ ShowDetails� �� 	Converter# [  �� 5y      $��7��67   $��1��6D   $	��0.5q�6T   ��6   �� *	PhoneNo+y�6b   �� $ ShowDetails�# [  �� 5z      $��
Email Idee��6   $��8��61   $��0��6>   y�6O   �� $ ShowDetails�# [  �� 5{      $��8��69   $��1��6F   $	��0.5q�6V   ��6   �� *	EmailIdee+y�6d   �� $ ShowDetails�# [  5|      5}      5~      � 5   
   $��1��6    5�       �� BasedOn  
TitleStyle  SubTitleStyle��%6  '��       &	 *    7��&	 �    7���� 5�      " ��6   .�5�      ��  � ��$ 16(�69   �� 5�       � ��$ Times New Roman)�6;   �� 5�       � ��
 ��p��6;   �� 5�       �@��TextAlignment$ Right=�6>   �� 5�       �@��AcceptsReturn . 6>   �� 5�       � ��
 �����6;   5�      �� 5�      " ��6   8   .�5�      ��  � ��$ 55(�69   �� 5�       � ��
 ��  �6;   5�      �� 5�      " ��6   8   .�5�      ��  � ��$ 26(�69   �� 5�       � ��
 ��  �6;   5�      5�      .+�5�      �� .+�5�      �� $��
Title Text��6   #��[ 6,   �� 5�      $��Sub Title Text��6   #��[ 60   �� 5�      $��Body Of the Paragraph��6   5�      5�      5�      5�      