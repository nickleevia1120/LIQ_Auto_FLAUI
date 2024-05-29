*** Settings ***
Variables    ../../Python_Files/LIQ_LoginWindow.py

*** Variables ***
${LIQ_LoginForm_Window}    ${LIQ_Login_Window}
${LIQ_LoginForm_Username_Textfield}    ${LIQ_Login_Form_Locators['Username']}
${LIQ_LoginForm_Password_Textfield}    ${LIQ_Login_Form_Locators['Password']}
${LIQ_LoginForm_Login_Button}          ${LIQ_Login_Form_Locators['Login Button']}
${LIQ_LoginForm_About_Hyperlink}          ${LIQ_Login_Form_Locators['Hyperlink About']}
${LIQ_LoginForm_ChangePassword_Hyperlink}    ${LIQ_Login_Form_Locators['Hyperlink Change Password']}

