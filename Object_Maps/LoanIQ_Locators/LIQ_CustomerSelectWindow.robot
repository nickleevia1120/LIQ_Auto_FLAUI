*** Settings ***
Variables  ../../Python_Files/LIQ_CustomerSelectWindow.py

*** Variables ***
${LIQ_CustomerSelect_TitleBar}   ${LIQ_CustomerSelect_Window}
${LIQ_CustomerSelect_New_RadioButton}   ${LIQ_CustomerSelect_Window_Locators['New']}
${LIQ_CustomerSelect_CustomerShortName_Textfield}   ${LIQ_CustomerSelect_Window_Locators['Customer Short Name']}
${LIQ_CustomerSelect_LegalName_Textfield}   ${LIQ_CustomerSelect_Window_Locators['Legal Name']}
${LIQ_CustomerSelect_RestrictedCustomer_CheckBox}   ${LIQ_CustomerSelect_Window_Locators['Restricted Customer']}
${LIQ_CustomerSelect_ThirdPartyRecipientOnly_CheckBox}   ${LIQ_CustomerSelect_Window_Locators['Third Party Recipient Only']}
${LIQ_CustomerSelect_CustomerID_TextField}   ${LIQ_CustomerSelect_Window_Locators['Customer ID']}
${LIQ_CustomerSelect_OK_Button}   ${LIQ_CustomerSelect_Window_Locators['OK Button']}
${LIQ_CustomerSelect_Search_Button}   ${LIQ_CustomerSelect_Window_Locators['Search Button']}
${LIQ_CustomerSelect_Cancel_Button}   ${LIQ_CustomerSelect_Window_Locators['Cancel Button']}
${LIQ_CustomerSelect_ShortName_ComboBox}   ${LIQ_CustomerSelect_Window_Locators['Short Name ComboBox']}
${LIQ_CustomerSelect_ShortName_TextField}   ${LIQ_CustomerSelect_Window_Locators['Short Name TextField']}
${LIQ_CustomerSelect_StatusFilter_Button}   ${LIQ_CustomerSelect_Window_Locators['Status Filter']}