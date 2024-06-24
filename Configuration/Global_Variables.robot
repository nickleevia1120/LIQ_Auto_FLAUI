*** Settings ***
Library    FlaUILibrary
Library    SeleniumLibrary
Library    String
Library    RPA.Tables
Library    RPA.Excel.Files

Documentation    This will hold all the global variables

*** Variables ***
${loaniq_login_datasets_path}    C:/Users/User/OneDrive - Adventure Consultancy Solutions/Desktop/16- Data_sets/TC_01_CreateBorrower.xlsx
${loaniq_path}  C:/Users/User/OneDrive - Adventure Consultancy Solutions/Desktop/Client/LoanIQJ.exe
@{CLEAR_TEXT}    s'CTRL+A'    s'BACK'