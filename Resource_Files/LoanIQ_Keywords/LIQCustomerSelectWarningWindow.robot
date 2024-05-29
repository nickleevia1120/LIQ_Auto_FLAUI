*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_CustomerSelectWarningWindow.robot

*** Keywords ***
LIQ CustomerSelectWarning Click Yes Button
    [Documentation]    This keyword is use to click the yes button..
    ...    @author:    ECondino    28MAY2024    - initial create
    click button    ${liq_customerselectwarning_yes_button}

LIQ CustomerSelectWarning Click No Button
    [Documentation]    This keyword is use to click the yes button..
    ...    @author:    ECondino    28MAY2024    - initial create
    click button    ${liq_customerselectwarning_no_button}
