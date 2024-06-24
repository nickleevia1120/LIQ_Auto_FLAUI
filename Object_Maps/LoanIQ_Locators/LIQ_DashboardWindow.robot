*** Settings ***
Variables     ../../Python_Files/LIQ_DashboardWindow.py

*** Variables ***
${LIQ_DashBoard_Maximize_Window}   ${LIQ_DashBoard_Window}
${LIQ_DashBoard_Close_Window}    ${LIQ_DashBoard_Window}
${LIQ_FavoritesPane_All/Deal_ComboBox}   ${LIQ_DashBoard_Window_Locators['All/Deal ComboBox']}
${LIQ_FavoritesPane_Ascending/Descending_ComboBox}   ${LIQ_DashBoard_Window_Locators['Ascending/Descending ComboBox']}
${LIQ_FavoritesPane_Refresh_Button}   ${LIQ_DashBoard_Window_Locators['Refresh Button']}
${LIQ_MenuPane_Favorites_Button}   ${LIQ_DashBoard_Window_Locators['Favorites Button']}
${LIQ_MenuPane_Hierarchy_Button}   ${LIQ_DashBoard_Window_Locators['Hierarchy Button']}
${LIQ_MenuPane_History_Button}   ${LIQ_DashBoard_Window_Locators['History Button']}
${LIQ_MenuPane_SystemTools_Button}   ${LIQ_DashBoard_Window_Locators['System Tools Button']}
${LIQ_MenuPane_Actions_Button}   ${LIQ_DashBoard_Window_Locators['Actions Button']}
${LIQ_MenuPane_TableMaintenance_Button}   ${LIQ_DashBoard_Window_Locators['Table Maintenance Button']}
${LIQ_MenuPane_Treasury_Button}   ${LIQ_DashBoard_Window_Locators['Treasury Button']}
${LIQ_MenuPane_WorkInProcess_Button}   ${LIQ_DashBoard_Window_Locators['Work In Process Button']}
${LIQ_FavoritesPane_TreeItem}   ${LIQ_DashBoard_Window_Locators['Favorites TreeItem']}
${LIQ_ActionsPane_TreeItem}   ${LIQ_DashBoard_Window_Locators['Actions TreeItem']}
${LIQ_ActionsCustomer_TreeItem}   ${LIQ_DashBoard_Window_Locators['Actions Customer TreeItem']}