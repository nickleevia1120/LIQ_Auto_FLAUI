LIQ_Customer_List_By_ShortName = '/Window[2]/Window[contains(@Name, "Customer List By Short Name")]'
LIQ_Customer_List_By_ShortName_ButtonPane = '/Window[2]/Window/Pane[2]'


LIQ_Customer_List_By_ShortName_Locators = {
    'TitleBar': LIQ_Customer_List_By_ShortName + '/Titlebar',
    'List': LIQ_Customer_List_By_ShortName + '/List',
    'OK Button': LIQ_Customer_List_By_ShortName_ButtonPane + '/Button[contains(@Name,"OK")]',
    'Cancel Button': LIQ_Customer_List_By_ShortName_ButtonPane + '/Button[contains(@Name,"Cancel")]',
}

