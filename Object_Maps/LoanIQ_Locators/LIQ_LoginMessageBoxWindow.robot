*** Settings ***
Library    FlaUILibrary
Resource    ../../Configuration/Global_Variables.robot
Variables    ../../LIQ_LoginMessageBoxWindow.py

*** Variables ***
${Login_DialogueBox_Titlebar}    ${LIQ_Login_Dialogue_Box_Locators['Titlebar']}
${Login_DialogueBox_OK_Button}    ${LIQ_Login_Dialogue_Box_Locators['OK Button']}

