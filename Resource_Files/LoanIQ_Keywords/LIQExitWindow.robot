*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_ExitWindow.robot
Resource    ../../Resource_Files/Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_ExitMessageBoxWindow.robot

*** Keywords ***
Click Exit Window
    [Documentation]    This keyword is use to click exit button of the dashboard window.
    ...    @author:    NOracion    24OCT2023    - initial create
   FlaUILibrary.close window   ${liq_exit_window}

Close LIQ Application
     [Documentation]    This keyword is use to click the ok button to close the LIQ app.
    ...    @author:    NOracion    24OCT2023    - initial create
    Exit Window    ${logout_dialoguebox_ok_button}
