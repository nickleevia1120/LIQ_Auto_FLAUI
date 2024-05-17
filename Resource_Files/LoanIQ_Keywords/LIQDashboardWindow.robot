*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_LoginWindow.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_DashboardWindow.robot

*** Keywords ***
Click Dashboard Window
   [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    24OCT2023    - initial create
    flauilibrary.maximize window    ${loaniq_maximize_window}

