*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_Datasets.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_SelectCustomerStatus.robot

*** Keywords ***
LIQ Click Select Customer Status
   [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    24MAY2024    - initial create
    ${itemname}=    get cell value    ${customerselect_list_itemname_cell}[row]     ${customerselect_list_itemname_cell}[col]
    select list item    ${loaniq_selectcustomerstatus_list}    ${itemname}
    click button    ${loaniq_selectcustomerstatus_ok_button}
    #click button    ${loaniq_selectcustomerstatus_cancel_button}

