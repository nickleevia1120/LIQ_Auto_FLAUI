*** Settings ***
Library    FlaUILibrary
Resource    ../../Configuration/Global_Variables.robot
Variables    ../../LIQ_LoginWindowLocator.py

*** Variables ***
${Loaniq_Login_Window}    ${LIQ_Login_Window}
${Username_Textfield}    ${LIQ_Login_Form_Locators['Username']}
${Password_Textfield}    ${LIQ_Login_Form_Locators['Password']}
${Login_Button}          ${LIQ_Login_Form_Locators['Login Button']}

