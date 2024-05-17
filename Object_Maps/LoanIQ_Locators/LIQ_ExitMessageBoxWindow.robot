*** Settings ***
Library    FlaUILibrary
Resource    ../../Configuration/Global_Variables.robot
Variables   ../../LIQ_ExitMessageBoxWindow.py

*** Variables ***
${Logout_DialogueBox_Titlebar}    ${LIQ_Logout_Dialogue_Box_Locators['Titlebar']}
${Logout_DialogueBox_OK_Button}    ${LIQ_Logout_Dialogue_Box_Locators['OK Button']}