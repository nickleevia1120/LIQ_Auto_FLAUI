*** Settings ***
Resource    ../Configuration/Import_File.robot
Resource    ../Configuration/Global_Variables.robot
Resource    ../Resource_Files/LoanIQ_Keywords/LIQLoginWindow.robot
Resource    ../Resource_Files/LoanIQ_Keywords/LIQLoginDialogBoxWindow.robot
Resource    ../Resource_Files/Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../Resource_Files/LoanIQ_Keywords/LIQDashboardWindow.robot
Resource    ../Resource_Files/LoanIQ_Keywords/LIQLogoutWindow.robot
Resource    ../Resource_Files/LoanIQ_Keywords/LIQDatasets.robot
Resource    ../Resource_Files/LoanIQ_Keywords/LIQCustomerSelectWindow.robot
Resource    ../Resource_Files/LoanIQ_Keywords/LIQSelectCustomerStatus.robot
Resource    ../Resource_Files/LoanIQ_Keywords/LIQCustomerSelectWarningWindow.robot
Resource    ../Resource_Files/LoanIQ_Keywords/LIQCustomerListByShortNameWindow.robot

*** Test Cases ***
Create Borrower
    #LIQ Open Dataset Workbook
    #LIQ Launch Login Application
    #LIQ Input Credentials
    #LIQ Click Hyperlink About
    #LIQ Click Hyperlink Change Password
    #LIQ Click Login DialogBox Ok Button
    #LIQ Click Dashboard Window
    #LIQ Click Menu Pane Hierarchy Button
    #LIQ Click Menu Pane History Button
    #LIQ Click Menu Pane System Tools Button
    #LIQ Click Menu Pane Table Maintenance Button
    #LIQ Click Menu Pane Treasury Button
    #LIQ Click Menu Pane Work In Process Button
    #LIQ Click Menu Pane Favorites Button
    LIQ Click Favorites Pane Tree Item
    #LIQ Click Menu Pane Actions Button
    #LIQ Click Actions Pane Tree Item
    #LIQ Expand Favorites Pane All/Deal ComboBox
    #LIQ Expand Favorites Pane Ascending/Descending ComboBox
    #LIQ Click Favorites Pane Refresh Button
    #LIQ Click Exit Window
    #LIQ Click Favorites Pane Tree Item
    #LIQ Customer Select Enter Names
    #LIQ Click Log On As A Different User Radio Button
    #LIQ Click Exit Fusion Loan IQ Radio Button
    #LIQ Set CheckBox Save Desktop Settings
    #LIQ Close Application
### Customer Select Window ###
### Name ###
    #LIQ CustomerSelect Click RadioButton New
    #LIQ CustomerSelect Enter Names
    #LIQ CustomerSelect Cancel Button
    #LIQ CustomerSelect Set CheckBox Restricted Customer
    #LIQ CustomerSelect Set CheckBox Third Party Receipt Only
### Existing ###
    #LIQ CustomerSelect Expand Short Name ComboBox
    #LIQ CustomerSelect Enter Short Name
    #LIQ CustomerSelect Click Status Filter
### Select Customer Status ###
    #LIQ Click Select Customer Status
 ### Select Customer Warning Window ###
    #LIQ CustomerSelectWarning Click Yes Button
    #LIQ CustomerSelectWarning Click No Button
### Customer List By Short Name ###
    #LIQ CustomerListByShortName Click OK Button
    #LIQ CustomerListByShortName Click Cancel Button


