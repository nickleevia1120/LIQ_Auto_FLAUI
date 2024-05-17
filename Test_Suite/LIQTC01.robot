*** Settings ***
Library    FlaUILibrary
Resource    ../Configuration/Import_File.robot
Resource    ../Configuration/Global_Variables.robot
Resource    ../Resource_Files/LoanIQ_Keywords/LIQLoginWindow.robot
Resource    ../Resource_Files/LoanIQ_Keywords/LIQLoginMessageBoxWindow.robot
Resource    ../Resource_Files/Generic_Keywords/Utility_Keywords/GenericKeywords.robot
Resource    ../Resource_Files/LoanIQ_Keywords/LIQDashboardWindow.robot
Resource    ../Resource_Files/LoanIQ_Keywords/LIQExitWindow.robot
*** Test Cases ***
TC01
  Launch Login Application
  Input Credentials
  Click Prompt Login Ok Button
  Click Dashboard Window
  Click Exit Window
  Close LIQ Application





