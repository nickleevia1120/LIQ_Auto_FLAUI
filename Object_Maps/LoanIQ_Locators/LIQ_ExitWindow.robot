*** Settings ***
Library    FlaUILibrary
Resource    ../../Configuration/Global_Variables.robot
Variables    ../../LIQ_ExitWindow.py

*** Variables ***
${Loaniq_Close_Window}     ${LIQ_Exit_Window_Locators['Exit Button']}
${Loaniq_Exit_Window}    ${LIQ_Exit_Window}
