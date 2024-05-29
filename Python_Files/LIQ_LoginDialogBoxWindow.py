LIQ_DialogBox_Window = '/Window'
LIQ_DialogBox_Window_Pane = LIQ_DialogBox_Window + '[contains(@Name, "Fusion Loan IQ")]'

LIQ_Login_DialogBox_Locators = {
    'Titlebar': LIQ_DialogBox_Window + '//Titlebar',
    'OK Button': LIQ_DialogBox_Window_Pane + '//Button[contains(@Name, "OK")]'
}
