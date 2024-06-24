*** Settings ***
Resource    ../../../Configuration/Import_File.robot
Resource    ../../../Configuration/Global_Variables.robot
Documentation    This will hold all the generic keywords that can be used in both desktop app and web

*** Keywords ***
LIQ Activate Window
    [Documentation]    This keyword is use to wait if the window is already appeared on the screen.
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]    ${locator}
    flauilibrary.is visible    ${locator}

LIQ Select Window Tab
    [Documentation]    Select window tab
    ...    @author:    NOracion    05JUN2024    - initial create
     [Arguments]    ${locator}    ${tabname}
    flauilibrary.select tab item by name    ${locator}    ${tabname}

Transform to Text Keys
    [Documentation]    This keyword will transform a text string to a valid t'<textarg>'
    ...    to be passed on flauilibrary.press key
    ...    @author:    NOracion   3JUNE2024
    [Arguments]    ${text}
    ${transformed_text}=    catenate  SEPARATOR=    t'    ${text}    '
    [Return]    ${transformed_text}

LIQ Close Window
    [Documentation]    This keyword is use to exit or close the window.
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]    ${locator}
    flauilibrary.close window    ${locator}

LIQ Click Window Button
    [Documentation]    This keyword is use to click the button.
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]    ${locator}
    flauilibrary.click    ${locator}

LIQ Double Click Window Button
     [Documentation]    This keyword is use to click the button.
    ...    @author:    NOracion    17MAY2024    - initial create
    [Arguments]    ${locator}
    flauilibrary.double click    ${locator}

LIQ Right Click
    [Documentation]    This keyword is use to right click.
    ...    @author:    ECondino   03JUN2024    - initial create
    [Arguments]    ${locator}
    flauilibrary.right click    ${locator}

LIQ Maximize Window
   [Documentation]    This keyword is use to restore the window.
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]    ${locator}
    flauilibrary.maximize window    ${locator}

LIQ Focus Element
     [Documentation]    This keyword is use to the specific element before active/click
    ...    @author:    NOracion   04JUN2024    - initial create
    [Arguments]    ${locator}
    flauilibrary.focus    ${locator}

LIQ Enter Text
     [Documentation]    This keyword is use to input text in text field.
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]    ${locator}    ${value}
    flauilibrary.set text to textbox    ${locator}   ${value}

LIQ Set Checkbox Button
    [Documentation]    This keyword is use to exit or close the window.
    ...    @author:    NOracion    17MAY2024    - initial create
    [Arguments]    ${locator}    ${value}=${False}
    flauilibrary.set checkbox state    ${locator}    ${value}

LIQ Select Combo Box Value
    [Documentation]    This keyword is use to get radio button state.
    ...    @author:    ECondino   03JUN2024    - initial create
    [Arguments]    ${locator}     ${value}
    flauilibrary.select combobox item by name    ${locator}    ${value}

LIQ Set Radio Button
    [Documentation]    This keyword is use to get radio button state.
    ...    @author:    ECondino   03JUN2024    - initial create
    [Arguments]    ${locator}     ${value}=${False}
    run keyword if    ${value}==${True}    flauilibrary.select radiobutton    ${locator}

LIQ Select List Item
    [Documentation]    This keyword is use to select all the items from combo box.
    ...    @author:    NOracion    24MAY2024    - initial create
    [Arguments]    ${locator}    ${value}
    flauilibrary.select listbox item by name    ${locator}    ${value}

LIQ Get Data
     [Documentation]    This keyword is use t get data from static file or field value
    ...    @author:    NOracion   04JUN2024    - initial create
    #TODO: need to create generic in pyhthon file for combobox and radiobutton
    [Arguments]    ${locator}
    ${text}=    flauilibrary.get text from textbox    ${locator}
    [Return]    ${text}

LIQ Get Document Value
    [Documentation]    Get data from a document locator
    ...    @author:    NOracion   04JUN2024    - initial create
    [Arguments]    ${locator}
    ${text}    flauilibrary.get text from textbox    ${locator}
    [Return]    ${text}

LIQ Get ComboBox Value
    [Documentation]    This keyword is use to exit or close the window.
    ...    @author:    NOracion    23MAY2024    - initial create
    [Arguments]    ${locator}
    ${selected_name}    flauilibrary.get all selected names from combobox    ${locator}
    [Return]    ${selected_name}

LIQ Get Checkbox Toggle State
    [Documentation]    This keyword is use to get data state from checkbox.
    ...    @author:    NOracion    23MAY2024    - initial create
     [Arguments]    ${locator}
    ${checkbox_state}    flauilibrary.get checkbox state    ${locator}
    [Return]    ${checkbox_state}

LIQ Get Radio Button State
    [Documentation]    This keyword is use to exit or close the window.
    ...    @author:    NOracion    17MAY2024    - initial create
    [Arguments]    ${locator}
    FlaUILibrary.get radiobutton state    ${locator}
    ${radiobutton_state}    flauilibrary.get radiobutton state    ${locator}
    [Return]    ${radiobutton_state}

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


Collapse Tree
     [Documentation]    This keyword is use to exit or close the window.
    ...    @author:    NOracion    20MAY2024    - initial create
    [Arguments]    ${locator}    ${item}
    flauilibrary.collapse treeitem     ${locator}    ${item}

Expand Tree
     [Documentation]    This keyword is use to exit or close the window.
    ...    @author:    NOracion    20MAY2024    - initial create
    [Arguments]    ${locator}    ${item}
    FlaUILibrary.expand treeitem    ${locator}    ${item}

Perform Click Hyperlink
     [Documentation]    This keyword is use to click the button.
    ...    @author:    ECondino   23MAY2024    - initial create
    [Arguments]    ${locator}
    flauilibrary.click    ${locator}

Clear TextField Text
    [Documentation]    This keyword will clear the text in a textfield.
    ...    @author:    NOracion   3JUNE2024
    [Arguments]    ${locator}
    #flauilibrary.click    ${locator}
    flauilibrary.press keys    ${CLEAR_TEXT}    ${locator}    500

Get Tag Name
     [Documentation]    This keyword is use t get data from static file or field value
     ...    @author:    NOracion   06JUN2024    - initial create
     [Arguments]    ${locator}
     ${text}=    flauilibrary.get property from element    ${locator}
     log to console    ${text}
     ${text}=    flauilibrary.select combobox item by name    ${locator}
     log to console    ${text}

Launch Application
    [Documentation]    This keyword is use to open the LIQ app.
    ...    @author:    NOracion    24OCT2023    - initial create
    [Arguments]    ${value}=None     ${elementToCheck}=None
    flauilibrary.launch application    ${value}
    #flauilibrary.wait until element is visible    ${elementToCheck}

LIQ Send Key
      [Documentation]    Use to press key.
    ...    @author:    NOracion    3JUNE2024
    [Arguments]    ${value}
    flauilibrary.press key    ${value}