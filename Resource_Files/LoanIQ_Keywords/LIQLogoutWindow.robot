*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_LogoutDialogBoxWindow.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_DashboardWindow.robot
*** Keywords ***
LIQ Click Log On As A Different User Radio Button
    [Documentation]    This keyword is use to click exit button of the dashboard window.
    ...    @author:    NOracion    17MAY2024    - initial create
    select radio button    ${liq_logout_dialogbox_logonasadifferentuser_radiobutton}

LIQ Click Exit Fusion Loan IQ Radio Button
    [Documentation]    This keyword is use to click exit button of the dashboard window.
    ...    @author:    NOracion    17MAY2024    - initial create
    select radio button    ${liq_logout_dialogbox_exitfusionloaniq_radiobutton}

LIQ Set CheckBox Save Desktop Settings
    [Documentation]    This keyword is use to click exit button of the dashboard window.
    ...    @author:    NOracion    17MAY2024    - initial create
    set checkbox    ${liq_logout_dialogbox_checkbox}    ${True}

LIQ Close Application
    [Documentation]    This keyword is use to click the ok button to close the LIQ app.
    ...    @author:    NOracion    24OCT2023    - initial create
    exit window    ${liq_logout_dialogbox_ok_button}
