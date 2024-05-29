*** Settings ***
Resource    ../../Configuration/Import_File.robot
Resource    ../../Object_Maps/LoanIQ_Locators/LIQ_LoginDialogBoxWindow.robot

*** Keywords ***
LIQ Click Login DialogBox Ok Button
    [Documentation]    This keyword is use to click the ok button of the dialogue box.
    ...    @author:    NOracion    24OCT2023    - initial create
    sleep    55s
    flauilibrary.wait until element is visible    ${liq_dialogbox_window}
    flauilibrary.click    ${liq_login_dialogbox_ok_button}
    sleep    20s



