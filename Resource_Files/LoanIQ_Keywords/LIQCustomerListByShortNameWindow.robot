*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_Datasets.robot
Resource    ../Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_CustomerListByShortNameWindow.robot

*** Keywords ***
LIQ Customer List By Short Name Tree Item
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    30MAY2024    - initial create
    ${treeItem}  set variable    N:nickle
    liq select list item    ${liq_customerlistbyshortname_treeitem}    ${treeItem}
    #flauilibrary.double click   ${liq_actionscustomer_treeitem}

LIQ CustomerListByShortName Click OK Button
    [Documentation]    This keyword is use to click the yes button..
    ...    @author:    ECondino    28MAY2024    - initial create
    click button    ${liq_customerlistbyshortname_ok_button}

LIQ CustomerListByShortName Click Cancel Button
    [Documentation]    This keyword is use to click the yes button..
    ...    @author:    ECondino    28MAY2024    - initial create
    click button    ${liq_customerlistbyshortname_cancel_button}
