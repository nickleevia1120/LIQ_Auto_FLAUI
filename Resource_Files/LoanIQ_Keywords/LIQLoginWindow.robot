*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_Datasets.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_LoginWindow.robot
Resource    ../Generic_Keywords/Utility_Keywords/GenericKeywords.robot

*** Keywords ***
LIQ Input Credentials
    [Documentation]    This keyword is use to input username in username textfield.
    ...    @author:       - initial create
    sleep    30s
    liq activate window    ${liq_loginform_username_textfield}
    liq focus element    ${liq_loginform_username_textfield}
    liq input username    ${liq_loginform_username_textfield}
    liq input password    ${liq_loginform_password_textfield}
    liq click window button    ${liq_loginform_login_button}

LIQ Input UserName
    [Documentation]    This keyword is use to input username in username textfield.
    ...    @author:       - initial create
    [Arguments]   ${locator}
    ${username}=    get cell value    ${username_cell}[row]     ${username_cell}[col]
    liq enter text    ${locator}    ${username}

LIQ Input Password
    [Documentation]    This keyword is use to input password in password textfield.
    ...    @author:      - initial create
    [Arguments]    ${locator}
    ${password}=    get cell value    ${password_cell}[row]     ${password_cell}[col]
    liq enter text    ${locator}    ${password}

LIQ Click Hyperlink About
    [Documentation]    This keyword is use to click link.
    ...    @author:    ECondino    23MAY2024    - initial create
    perform click hyperlink    ${liq_loginform_about_hyperlink}

LIQ Click Hyperlink Change Password
    [Documentation]    This keyword is use to click link.
    ...    @author:    ECondino    23MAY2024    - initial create
    perform click hyperlink    ${liq_loginform_changepassword_hyperlink}
