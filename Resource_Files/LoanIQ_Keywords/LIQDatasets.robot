*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../../Configuration/Global_Variables.robot
Resource    ../Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_LoginWindow.robot

*** Keywords ***
LIQ Open Dataset Workbook
    [Documentation]    This keyword is use to input UserName in Username TextField.
    ...    @author:       - initial create
    open workbook by path    ${loaniq_login_datasets_path}

LIQ Launch Login Application
    [Documentation]    This keyword is use to input UserName in Username TextField.
    ...    @author:       - initial create
    launch application    ${loaniq_path}    ${liq_login_window}