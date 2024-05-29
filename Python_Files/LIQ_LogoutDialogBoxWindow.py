LIQ_DialogBox_Window = '/Window[contains(@Name, " 7.6 - ACSLIQTRNG")]'
LIQ_DialogBox_Window_Pane = '(' + LIQ_DialogBox_Window + '//Pane)'
LIQ_DialogBox_RadioButton_Pane = '(' + LIQ_DialogBox_Window + '//Pane)'

LIQ_Logout_DialogBox_Locators = {
    'Titlebar': LIQ_DialogBox_Window + '//Titlebar',
    'Log on as a different user RadioButton': LIQ_DialogBox_RadioButton_Pane + '//RadioButton[contains(@Name, "Log on as a different user")]',
    'Exit Fusion Loan IQ RadioButton': LIQ_DialogBox_RadioButton_Pane + '//RadioButton[contains(@Name, "Exit Fusion Loan IQ")]',
    'Check Box': LIQ_DialogBox_Window + '//CheckBox[contains(@Name, "Save Desktop Settings")]',
    'OK Button': LIQ_DialogBox_Window_Pane + '//Button[contains(@Name, "OK")]',

}

