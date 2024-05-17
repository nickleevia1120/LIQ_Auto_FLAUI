*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../../Configuration/Global_Variables.robot
Resource    ../../Resource_Files/Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_LoginWindow.robot

*** Keywords ***
Launch Login Application
    [Documentation]    This keyword is use to input UserName in Username TextField.
    ...    @author:       - initial create
    Launch Application    ${loaniq_path}    ${loaniq_login_window}

Input Credentials
    [Documentation]    This keyword is use to input UserName in Username TextField.
    ...    @author:       - initial create
    sleep    30s
    Open Workbook By Path    ${loaniq_login_datasets_path}
    Wait Until Window is Visible    ${username_textfield}
    LIQ Input UserName    ${username_textfield}
    LIQ Input Password    ${password_textfield}
    Click Button    ${login_button}
    sleep    60s

LIQ Input UserName
    [Documentation]    This keyword is use to input UserName in Username TextField.
    ...    @author:       - initial create
    [Arguments]   ${locator}
    ${username}=    get cell value    ${username_cell}[row]     ${username_cell}[col]
    Input Text    ${locator}    ${username}

LIQ Input Password
    [Documentation]    This keyword is use to input Password in Password Textfield.
    ...    @author:      - initial create
    [Arguments]    ${locator}
    ${password}=    get cell value    ${password_cell}[row]     ${password_cell}[col]
    Input Text    ${locator}    ${password}





