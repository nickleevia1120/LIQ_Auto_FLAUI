*** Settings ***
Resource    ../../../Configuration/Import_File.robot
Resource    ../../../Configuration/Global_Variables.robot
Resource    ../../../Configuration/Import_File.robot
Resource    ../../../Configuration/Setup.robot
Resource    ../../../Object_Maps/LoanIQ_Locators/LIQ_LoginWindow.robot
Resource    ../../../Object_Maps/LoanIQ_Locators/LIQ_ExitWindow.robot
Resource    ../../../Object_Maps/LoanIQ_Locators/LIQ_Datasets.robot

Documentation    This will hold all the generic keywords that can be used in both desktop app and web

*** Keywords ***
Launch Application
    [Documentation]    This keyword is use to open the LIQ app.
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]    ${value}=None     ${elementToCheck}=None
    flauilibrary.launch application    ${value}
    flauilibrary.wait until element is visible    ${elementToCheck}

Input Text
     [Documentation]    This keyword is use to input text in text field.
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]    ${locator}    ${value}
    flauilibrary.set text to textbox    ${locator}   ${value}

Click Button
    [Documentation]    This keyword is use to click the button.
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]    ${locator}
    flauilibrary.click    ${locator}

Maximize Window
   [Documentation]    This keyword is use to restore the window.
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]    ${locator}
    flauilibrary.maximize window    ${locator}

Open Workbook By Path
    [Documentation]    This keyword is use to open login dataset workbook
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]    ${datasets_path}
    open workbook    ${datasets_path}

Fetch Data From Dataset
    [Documentation]    This keyword is use to get value from dataset
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]     ${row}    ${col}
    ${data}=    get cell value    ${row}    ${col}

Wait Until Window is Visible
    [Documentation]    This keyword is use to wait if the window is already appeared on the screen.
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]    ${locator}
    flauilibrary.wait until element is visible    ${locator}

Exit Window
   [Documentation]    This keyword is use to exit or close the window.
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]    ${locator}
    flauilibrary.click    ${locator}



