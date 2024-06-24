*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_LogoutDialogBoxWindow.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_DashboardWindow.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_Datasets.robot

*** Keywords ***
LIQ Click Log On As A Different User Radio Button
    [Documentation]    Use to select the radio button.
    ...    @author:    NOracion    17MAY2024    - initial create
    #TODO: TRUE-> select radio button FALSE-> do nothing NO VALUE-> defult to false
    ${logoutcheckbox}=    get cell value    ${logout_checkbox_cell}[row]     ${logout_checkbox_cell}[col]
    liq set radio button  ${liq_logout_dialogbox_logonasadifferentuser_radiobutton}  ${True}
    sleep    2s
    liq set radio button  ${liq_logout_dialogbox_logonasadifferentuser_radiobutton}  ${False}
    sleep    2s
    liq set radio button  ${liq_logout_dialogbox_logonasadifferentuser_radiobutton}
    ${radiobuttonvalue}    liq get radio button state    ${liq_logout_dialogbox_logonasadifferentuser_radiobutton}
    log to console    ${radiobuttonvalue}

LIQ Click Exit Fusion Loan IQ Radio Button
    [Documentation]    Use to select the radio button.
    ...    @author:    NOracion    17MAY2024    - initial create
    liq set radio button    ${liq_logout_dialogbox_exitfusionloaniq_radiobutton}    ${True}

LIQ Set CheckBox Save Desktop Settings
    [Documentation]    Use click the checkbox button
    ...    @author:    NOracion    17MAY2024    - initial create
    liq set checkbox button    ${liq_logout_dialogbox_checkbox}    ${True}
    sleep    2s
    liq set checkbox button    ${liq_logout_dialogbox_checkbox}    ${False}
    sleep    2s
    liq set checkbox button    ${liq_logout_dialogbox_checkbox}    ${True}
    sleep    2s
    liq set checkbox button    ${liq_logout_dialogbox_checkbox}
    ${checkboxvalue}    liq get checkbox toggle state    ${liq_logout_dialogbox_checkbox}
    log to console    ${checkboxvalue}

LIQ Close Application
    [Documentation]    This keyword is use to click the ok button to close the LIQ app.
    ...    @author:    NOracion    24OCT2023    - initial create
    exit window    ${liq_logout_dialogbox_ok_button}
