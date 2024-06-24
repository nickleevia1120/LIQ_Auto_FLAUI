LIQ_CustomerSelect_Window = '/Window[2]'
LIQ_CustomerSelect_Input_Window = '/Window[contains(@Name, "Customer Select")]'
LIQ_CustomerSelect_RadioButton_Pane = LIQ_CustomerSelect_Input_Window + '/Pane[2]'
LIQ_CustomerSelect_Button_Pane = '/Window/Pane[1]'

LIQ_CustomerSelect_Window_Locators = {
    'Titlebar': LIQ_CustomerSelect_Window + '//Titlebar',
    'New': LIQ_CustomerSelect_RadioButton_Pane + '//RadioButton[contains(@Name, "New")]',
    'Customer Short Name': LIQ_CustomerSelect_Input_Window + '/Edit[2]',
    'Legal Name': LIQ_CustomerSelect_Input_Window + '/Document',
    'Restricted Customer': LIQ_CustomerSelect_Input_Window + '//CheckBox[contains(@Name, "Restricted Customer")]',
    'Third Party Recipient Only': LIQ_CustomerSelect_Input_Window + '//CheckBox[contains(@Name, "Third Party Recipient Only")]',
    'Customer ID': LIQ_CustomerSelect_Input_Window + '/Edit[1]',
    'OK Button': LIQ_CustomerSelect_Button_Pane + '/Button[contains(@Name, "OK")]',
    'Search Button': LIQ_CustomerSelect_Button_Pane + '//Button[contains(@Name, "Search")]',
    'Cancel Button': LIQ_CustomerSelect_Button_Pane + '//Button[contains(@Name, "Cancel")]',
    'Short Name ComboBox': LIQ_CustomerSelect_Input_Window + '/ComboBox',
    'Short Name TextField': LIQ_CustomerSelect_Input_Window + '/Edit',
    'Status Filter': LIQ_CustomerSelect_Input_Window + '/Button'
}

