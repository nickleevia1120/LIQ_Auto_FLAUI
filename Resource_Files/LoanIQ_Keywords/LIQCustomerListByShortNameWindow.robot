*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_Datasets.robot
Resource    ../Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_CustomerListByShortNameWindow.robot

*** Keywords ***
LIQ CustomerListByShortName Click OK Button
    [Documentation]    This keyword is use to click the yes button..
    ...    @author:    ECondino    28MAY2024    - initial create
    click button    ${liq_customerlistbyshortname_ok_button}

LIQ CustomerListByShortName Click Cancel Button
    [Documentation]    This keyword is use to click the yes button..
    ...    @author:    ECondino    28MAY2024    - initial create
    click button    ${liq_customerlistbyshortname_cancel_button}
