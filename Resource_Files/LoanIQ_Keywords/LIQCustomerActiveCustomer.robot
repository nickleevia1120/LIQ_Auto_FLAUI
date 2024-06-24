*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_Datasets.robot
Resource    ../Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_CustomerActiveCustomer.robot

*** Keywords ***
LIQ Active Customer General Tab
     [Documentation]    Use to select window tab
    ...    @author:    NOracion   05JUN2024    - initial create
    ${generaltab}   get cell value    ${activecustomer_general_cell}[row]  ${activecustomer_general_cell}[col]
    liq select window tab    ${liq_customer_activecustomer_tab}    ${generaltab}


LIQ Active Customer Corporate Tab
     [Documentation]    Use to select window tab
    ...    @author:    NOracion   05JUN2024    - initial create
   ${corporatetab}   get cell value    ${activecustomer_corporate_cell}[row]  ${activecustomer_corporate_cell}[col]
    liq select window tab    ${liq_customer_activecustomer_tab}    ${corporatetab}

LIQ Active Customer Risk Tab
     [Documentation]    Use to select window tab
    ...    @author:    NOracion   05JUN2024    - initial create
    click button    ${liq_customer_activecustomer_risk}

LIQ Active Customer SIC Tab
     [Documentation]    Use to select window tab
    ...    @author:    NOracion   05JUN2024    - initial create
    click button    ${liq_customer_activecustomer_sic}

LIQ Active Customer Bus Terr Tab
     [Documentation]    Use to select window tab
    ...    @author:    NOracion   05JUN2024    - initial create
    click button    ${liq_customer_activecustomer_busterr}

LIQ Active Customer MIS Codes Tab
     [Documentation]    Use to select window tab
    ...    @author:    NOracion   05JUN2024    - initial create
    click button    ${liq_customer_activecustomer_miscodes}

LIQ Active Customer Personnel Tab
     [Documentation]    Use to select window tab
    ...    @author:    NOracion   05JUN2024    - initial create
    click button    ${liq_customer_activecustomer_personnel}

LIQ Active Customer Events Tab
     [Documentation]    Use to select window tab
    ...    @author:    NOracion   05JUN2024    - initial create
    click button    ${liq_customer_activecustomer_events}

LIQ Active Customer Pending Tab
     [Documentation]    Use to select window tab
    ...    @author:    NOracion   05JUN2024    - initial create
    click button    ${liq_customer_activecustomer_pending}

LIQ Active Customer Comments Tab
     [Documentation]    Use to select window tab
    ...    @author:    NOracion   05JUN2024    - initial create
    click button    ${liq_customer_activecustomer_comments}

LIQ Active Customer Profiles Tab
     [Documentation]    Use to select window tab
    ...    @author:    NOracion   05JUN2024    - initial create
    click button    ${liq_customer_activecustomer_profiles}

LIQ Active Customer Workflow Tab
     [Documentation]    Use to select window tab
    ...    @author:    NOracion   05JUN2024    - initial create
    click button    ${liq_customer_activecustomer_workflow}