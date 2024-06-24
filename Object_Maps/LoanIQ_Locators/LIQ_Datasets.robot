*** Settings ***
Resource    ../../Configuration/Global_Variables.robot

*** Variables ***
### Dataset Row-Column Locators ###
&{username_cell}    row=1   col=B
&{password_cell}    row=2   col=B
&{all/deal_combobox_itemindex_cell}    row=3   col=B
&{ascending/descending_combobox_itemindex_cell}    row=4   col=B
&{customerselect_radiobutton_existing_cell}    row=5   col=B
&{customerselect_customershortname_cell}    row=6   col=B
&{customerselect_customerlegalname_cell}    row=7   col=B
&{customerselect_shortname_combobox_itemindex_cell}    row=8   col=B
&{customerselect_shortname_textfield_itemindex_cell}    row=9   col=B
&{customerselect_list_itemname_cell}    row=10   col=B
&{logout_checkbox_cell}    row=11   col=B
&{logout_radiobutton_cell}     row=12   col=B
&{activecustomer_general_cell}    row=13   col=B
&{activecustomer_corporate_cell}    row=14   col=B