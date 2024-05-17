*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_LoginMessageBoxWindow.robot
Resource    ../../Resource_Files/Generic_Keywords/Utility_Keywords/GenericKeywords.robot

*** Keywords ***
Click Prompt Login Ok Button
    [Documentation]    This keyword is use to click the ok button of the dialogue box.
    ...    @author:    NOracion    24OCT2023    - initial create
    sleep    60s
    flauilibrary.wait until element is visible    ${liq_dialoguebox_window}
    flauilibrary.click    ${login_dialoguebox_ok_button}



