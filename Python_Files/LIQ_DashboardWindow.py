LIQ_DashBoard_Window = '/Window[contains(@Name, "Fusion Loan IQ - Loan iq05 User 05")]'
LIQ_DashBoard_Window_Tree_Favorites_Pane = '((' + LIQ_DashBoard_Window + '/Pane)/Pane[5]/Tree)'
LIQ_DashBoard_Window_TreeItem_Favorites_Pane = '((' + LIQ_DashBoard_Window + '/Pane)/Pane[5]/Tree)/TreeItem'
LIQ_DashBoard_Window_Pane = LIQ_DashBoard_Window + '/Pane/Pane[7]'
LIQ_DashBoard_Window_Menu_Pane = '(' + LIQ_DashBoard_Window + '/Pane)/Pane[4]'
LIQ_DashBoard_Window_TreeItem_Actions_Pane = '((' + LIQ_DashBoard_Window + '/Pane)/Pane[5]/Tree)'

LIQ_DashBoard_Window_Locators = {
    'Maximize Window': LIQ_DashBoard_Window + '//Window[contains(@Name, "Maximize")]',
    'Close Window': LIQ_DashBoard_Window + '//Window[contains(@Name, "Close")]',
    'All/Deal ComboBox': LIQ_DashBoard_Window_Pane + '/ComboBox[1]',
    'Ascending/Descending ComboBox': LIQ_DashBoard_Window_Pane + '/ComboBox[2]',
    'Favorites TreeItem': LIQ_DashBoard_Window_Tree_Favorites_Pane + '//TreeItem',
    'Actions TreeItem': LIQ_DashBoard_Window_TreeItem_Actions_Pane + '//TreeItem',
    'Actions Customer TreeItem': LIQ_DashBoard_Window_TreeItem_Actions_Pane + '//TreeItem[16]',
    'Refresh Button': LIQ_DashBoard_Window_Pane + '/Button',
    'Favorites Button': LIQ_DashBoard_Window_Menu_Pane + '/Button[1]',
    'Hierarchy Button': LIQ_DashBoard_Window_Menu_Pane + '/Button[2]',
    'History Button': LIQ_DashBoard_Window_Menu_Pane + '/Button[3]',
    'Actions Button': LIQ_DashBoard_Window_Menu_Pane + '/Button[4]',
    'System Tools Button': LIQ_DashBoard_Window_Menu_Pane + '/Button[5]',
    'Table Maintenance Button': LIQ_DashBoard_Window_Menu_Pane + '/Button[6]',
    'Treasury Button': LIQ_DashBoard_Window_Menu_Pane + '/Button[7]',
    'Work In Process Button': LIQ_DashBoard_Window_Menu_Pane + '/Button[8]'
}
