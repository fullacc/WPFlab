   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   
   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  
MainWindow��5   	   $��637.545��6   $��869.761��6-   .��5	      �  J� RenderTransformOrigin$ 0.5,0.5&�6   $��0,0,0,1q�6+    � ColumnDefinitions 5
   
   �� 5      $	��81* �6   �� 5      $
��503* �6   z�5   
   V� 5      .~�5      �� �� 5      �� 5       �� Angle$ 0.292Q�6"   T� 5      5      .+�5   
   �� -   5         ��Name$
 Name��5      $��2��6    $
��Left=�64   $��20��6O   $��	10,15,0,0q�6[    �� TextWrapping$
 Wrap=�6n   $
��Name��6�   $	��Top=�6�   $	��120��6�   �� 5   
   -   5        $ Surname��5      $��2��6#   $
��Left=�67   $��20��6R   $��	10,40,0,0q�6^   $
 Wrap=�6q   $��Surname��6�   $	��Top=�6�   $	��120��6�   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ DateOfBirth��5      $
��Left=�6*   $	��Top=�6E   $��	10,65,0,0q�6]   $��2��6p   $	��120��6�      DisplayDate$ 
1990-09-21��6�      Text$ Date of birth��6�   �� 5   
   -   5        	 ��Name$
	 City��5      $
��Left=�6!   $��20��6<   $��	10,94,0,0q�6H   $	��Top=�6[   $	��120��6s   $��2��6   .@�5      �� $��Almaty��6   
 �� ContentStringFormat$
 Almaty��6,   �� 5      $��Astana��6   $
 Astana��6,   �� 5      $��	Karagandy��6   $
 	Karagandy��6/   5      �� 5   
   -   5        $ Email��5      $
��Left=�6!   $��20��6<   $��
10,119,0,0q�6H   $
 Wrap=�6\   $��email��6p   $	��Top=�6}   $	��120��6�   $��2��6�   	� 5   
   -   5         	�Name$
 Male��5      $��M��6$   $
��Left=�60   $��
10,144,0,0q�6K   $	��Top=�6_   $��20��6w   $��40��6�   6�   	� 5    
   -   5        $ Female��5       $��F��6&   $��
50,144,0,0q�62   $	��Top=�6F   $��20��6^   $
��Left=�6j   $��40��6�   6�   	� 5!   
   -   5        $ 	Undecided��5!      $��U��6)   $
��Left=�65   $��
90,144,0,0q�6P   $	��Top=�6d   $��2��6|   $��20��6�   $��40��6�   6�   �� 5"   
   -	   5         ��Name$ Submit��5"      $��Submit��6!   $
��Left=�62   $��20��6M   $��
10,169,0,0q�6Y   $	��Top=�6m   $	��120��6�   $��2��6�   6�   &   System.Windows.Controls.DataGrid  5#   
   -
   5          Name$ GridData��5#      $��1��6%   $
��Left=�65   $	��174��6P   $��	40,15,0,0q�6]   $	��Top=�6p   $	��560��6�      Columns 5$      4  .System.Windows.Controls.DataGridTemplateColumn  5%      ,  &System.Windows.Controls.DataGridColumn   ClipboardContentBinding 6)   Z�    CellTemplate 5&      �� 5'      .R�5(      �� -   5        .��5(   :   Delete5*      5+      5-      5/      51      52      