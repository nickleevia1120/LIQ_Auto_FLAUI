LIQ_DialogueBox_Window = '/Window[contains(@Name, " 7.6 - ACSLIQTRNG")]'
LIQ_DialogueBox_Window_Pane = '(' + LIQ_DialogueBox_Window + '//Pane)'

LIQ_Logout_Dialogue_Box_Locators = {
    'Titlebar': LIQ_DialogueBox_Window + '//Titlebar',
    'OK Button': LIQ_DialogueBox_Window_Pane + '//Button[contains(@Name, "OK")]'
}
