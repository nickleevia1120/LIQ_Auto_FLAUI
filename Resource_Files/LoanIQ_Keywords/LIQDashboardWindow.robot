*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_DashboardWindow.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_Datasets.robot

*** Keywords ***
LIQ Click Dashboard Window
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    24OCT2023    - initial create
    flauilibrary.maximize window    ${liq_dashboard_maximize_window}

LIQ Click Exit Window
    [Documentation]    This keyword is use to click exit button of the dashboard window.
    ...    @author:    NOracion    24OCT2023    - initial create
    flauilibrary.close window    ${liq_dashboard_close_window}

### LIQ Menu Pane ###
LIQ Click Menu Pane Actions Button
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    23MAY2024    - initial create
    click button    ${liq_menupane_actionsbutton}

LIQ Click Menu Pane Favorites Button
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    23MAY2024    - initial create
    click button    ${liq_menupane_favoritesbutton}

LIQ Click Menu Pane Hierarchy Button
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    23MAY2024    - initial create
    click button    ${liq_menupane_hierarchybutton}

LIQ Click Menu Pane History Button
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    23MAY2024    - initial create
    click button    ${liq_menupane_historybutton}

LIQ Click Menu Pane System Tools Button
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    23MAY2024    - initial create
    click button    ${liq_menupane_systemtoolsbutton}

LIQ Click Menu Pane Table Maintenance Button
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    23MAY2024    - initial create
    click button    ${liq_menupane_tablemaintenancebutton}

LIQ Click Menu Pane Treasury Button
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    23MAY2024    - initial create
    click button    ${liq_menupane_treasurybutton}

LIQ Click Menu Pane Work In Process Button
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    23MAY2024    - initial create
    click button    ${liq_menupane_workinprocessbutton}

### LIQ Favorites Pane ###
LIQ Expand Favorites Pane All/Deal ComboBox
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    20MAY2024    - initial create
    ${itemindex}=    get cell value    ${all/deal_combobox_itemindex_cell}[row]     ${all/deal_combobox_itemindex_cell}[col]
    expand drop down    ${liq_favoritespane_all/deal_combobox}
    select drop down list item by index    ${liq_favoritespane_all/deal_combobox}    ${itemindex}

LIQ Expand Favorites Pane Ascending/Descending ComboBox
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    23MAY2024    - initial create
    ${itemindex}=    get cell value    ${ascending/descending_combobox_itemindex_cell}[row]     ${ascending/descending_combobox_itemindex_cell}[col]
    expand drop down    ${liq_favoritespane_ascending/descending_combobox}
    select drop down list item by index    ${liq_favoritespane_ascending/descending_combobox}    ${itemindex}

LIQ Click Favorites Pane Refresh Button
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    23MAY2024    - initial create
    click button    ${liq_favoritespane_refresh_button}

LIQ Click Favorites Pane Tree Item
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    29MAY2024    - initial create
    ${treeItem}  set variable    N:[Favorites]->I:1->N:ANKESH_12345
    flauilibrary.select treeitem    ${liq_dashboard_window_tree_favorites_pane}    ${treeItem}

LIQ Click Actions Pane Tree Item
    [Documentation]    This keyword is use to maximize the LIQ dashboard window.
    ...    @author:    NOracion    29MAY2024    - initial create
    ${treeItem}  set variable    N:[Actions]->I:15
    flauilibrary.select treeitem    ${liq_actionspane_treeitem}    ${treeItem}

