*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_Datasets.robot
Resource    ../Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_CustomerSelectWindow.robot


*** Keywords ***
### New ###
LIQ CustomerSelect Click RadioButton New
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    24MAY2024    - initial create
    select radio button    ${liq_customerselect_new_radiobutton}

LIQ CustomerSelect Enter Names
    [Documentation]    This keyword is use to input UserName in Username TextField.
    ...    @author:  NOracion    24MAY2024    - initial create
    ${shortname}=    get cell value    ${customerselect_customershortname_cell}[row]     ${customerselect_customershortname_cell}[col]
    ${transformed_shortname}=    Transform to Text Keys    ${shortname}
    liq focus element    ${liq_customerselect_customershortname_textfield}
    clear textfield text    ${liq_customerselect_customershortname_textfield}
    liq customerselect enter customer short name    ${transformed_shortname}
    liq customerselect enter customer legal name    ${liq_customerselect_legalname_textfield}
    ${text_from_legalname}=    liq get data    ${liq_customerselect_legalname_textfield}
    log to console    ${text_from_legalname}


    #click button    ${liq_customerselect_ok_button}

LIQ CustomerSelect Cancel Button
    click button    ${liq_customerselect_cancel_button}

LIQ CustomerSelect Set CheckBox Restricted Customer
     [Documentation]    This keyword is use to click exit button of the dashboard window.
    ...    @author:    NOracion    24MAY2024    - initial create
    set checkbox    ${liq_customerselect_restrictedcustomer_checkbox}    ${True}

LIQ CustomerSelect Set CheckBox Third Party Receipt Only
     [Documentation]    This keyword is use to click exit button of the dashboard window.
    ...    @author:    NOracion    24MAY2024    - initial create
    set checkbox    ${liq_customerselect_thirdpartyrecipientonly_checkbox}    ${True}

### Existing ###
LIQ CustomerSelect Expand Short Name ComboBox
   [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    24MAY2024    - initial create
    ${itemindex}=    get cell value    ${customerselect_shortname_combobox_itemindex_cell}[row]     ${customerselect_shortname_combobox_itemindex_cell}[col]
    expand drop down    ${liq_customerselect_shortname_combobox}
    select drop down list item by index    ${liq_customerselect_shortname_combobox}    ${itemindex}

LIQ CustomerSelect Enter Short Name
   [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    24MAY2024    - initial create
    ${shortname}=    get cell value    ${customerselect_shortname_textfield_itemindex_cell}[row]     ${customerselect_shortname_textfield_itemindex_cell}[col]
    input text    ${liq_customerselect_shortname_textfield}    ${shortname}
    click button    ${liq_customerselect_search_button}

LIQ CustomerSelect Click Status Filter
   [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    24MAY2024    - initial create
    click button    ${liq_customerselect_statusfilter_button}

### Keywords for Enter Customer Names ###
LIQ CustomerSelect Enter Customer Short Name
   [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    24MAY2024    - initial create
   [Arguments]   ${shortname}
    flauilibrary.press key    ${shortname}

LIQ CustomerSelect Enter Customer Legal Name
   [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    24MAY2024    - initial create
   [Arguments]   ${locator}
    ${legalname}=    get cell value    ${customerselect_customerlegalname_cell}[row]     ${customerselect_customerlegalname_cell}[col]
    liq enter text    ${locator}    ${legalname}

LIQ CustomerSelect Get Document Value
     [Documentation]    This keyword is use to get the document value of legal name.
    ...    @author:    NOracion    05JUN2024    - initial create
    ${document}    liq get document value    ${liq_customerselect_legalname_textfield}
    log to console   ${document}