   M S B A M L   `   `   `  ����G  CCursWorkProj, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:CursWorkProjCursWorkProj  5   	       CursWorkProj.EditCustomer   5   	   W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:CursWorkProj     5   	     � Title$'  !Изменение клиента��5      $	��390��6   $	��320��6)   .��5	      � $��0,0,0,0q�6   .+�5
   
   �� $@��:Выберите клиента для изменения:��6   $��Center=�6:   $��0,20,0,0q�6W   $	��Top=�6i   �� 5   
   -   5         ��Name$ CustomerSelector��5      $��Center=�6-   $��0,72,0,0q�6J   $	��Top=�6\   $	��260��6t   $��25��6�   6�   �� 5   
   $��Имя:��6   $
��Left=�6   $��
29,120,0,0q�6:   $	��Top=�6N   �� 5   
   -   5         ��Name$ 	nameInput��5      $
��Left=�6%   $��
96,124,0,0q�6@   $�� ��6T    �� TextWrapping$
 Wrap=�6\   $	��Top=�6p   $	��192��6�   $��22��6�   �� 5   
   $��Фамилия:��6   $
��Left=�6#   $��
29,157,0,0q�6>   $	��Top=�6R   �� 5   
   -   5        $ lastNameInput��5      $
��Left=�6)   $��
96,161,0,0q�6D   $�� ��6X   $
 Wrap=�6`   $	��Top=�6t   $	��192��6�   $��22��6�   �� 5   
   $��Отчество:��6   $
��Left=�6$   $��
29,191,0,0q�6?   $	��Top=�6S   �� 5   
   -   5        $ PatronInput��5      $
��Left=�6'   $��
96,195,0,0q�6B   $�� ��6V   $
 Wrap=�6^   $	��Top=�6r   $	��192��6�   $��22��6�   �� 5   
   $��Номер:��6   $
��Left=�6!   $��
29,224,0,0q�6<   $	��Top=�6P   �� 5   
   -   5        $ 
phoneInput��5      $
��Left=�6&   $��
96,228,0,0q�6A   $�� ��6U   $
 Wrap=�6]   $	��Top=�6q   $	��192��6�   $��22��6�   �� 5   
   $��Город:��6   $
��Left=�6!   $��
30,255,0,0q�6<   $	��Top=�6P   �� 5   
   -   5        $ 	cityInput��5      $
��Left=�6%   $��
96,259,0,0q�6@   $�� ��6T   $
 Wrap=�6\   $	��Top=�6p   $	��192��6�   $��22��6�   �� 5   
   -   5         ��Name$ changeButton��5      $��Изменить��6'   $��Center=�6:   $��	0,311,0,0q�6W   $	��Top=�6j   $	��252��6�   $��32��6�   6�   5      5      