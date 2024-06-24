LIQ_Customer_List_By_ShortName = '/Window[3]/Window[contains(@Name, "Customer List By Short Name")]'
LIQ_Customer_List_By_ShortName_ButtonPane = '/Window[2]/Window/Pane[2]'
LIQ_Customer_List_By_ShortName_Pane = '((' + LIQ_Customer_List_By_ShortName + '/Pane[1]/Pane)'


LIQ_Customer_List_By_ShortName_Locators = {
    'TitleBar': LIQ_Customer_List_By_ShortName + '/Titlebar',
    'Customer By List Short Name Tree Item': LIQ_Customer_List_By_ShortName_Pane + '/Tree',
    'Customer By List Short Name Nickle 1 Tree Item': LIQ_Customer_List_By_ShortName_Pane + '/Tree/TreeItem',
    'OK Button': LIQ_Customer_List_By_ShortName_ButtonPane + '/Button[contains(@Name,"OK")]',
    'Cancel Button': LIQ_Customer_List_By_ShortName_ButtonPane + '/Button[contains(@Name,"Cancel")]',
}

