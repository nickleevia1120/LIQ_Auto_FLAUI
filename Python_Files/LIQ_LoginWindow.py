LIQ_Login_Window = '/Window'
LIQ_Login_Window_Pane = '(' + LIQ_Login_Window + '[1]//Pane)'

LIQ_Login_Form_Locators = {
    'Title Bar': LIQ_Login_Window + '//TitleBar[contains(@Name, "Fusion Loan IQ - Login")]',
    'Username': LIQ_Login_Window_Pane + '//Pane[2]//Edit',
    'Password': LIQ_Login_Window_Pane + '//Pane[3]//Edit',
    'Login Button': LIQ_Login_Window + '//Button[contains(@Name, "Login")]',
    'Hyperlink About': LIQ_Login_Window + '//Hyperlink[contains(@Name, "About")]',
    'Hyperlink Change Password': LIQ_Login_Window + '//Hyperlink[contains(@Name, "Change Password")]'
}
