*** Settings ***
Variables               book_locators.yaml


*** Keywords ***
Tap Book Tab Button 
    Wait Until Element Is Visible       locator=${book_tab_btn}
    Tap                                 locator=${book_tab_btn}

Select From City 
    Tap                                 locator=${from_city_dropdown}
    Wait Until Element Is Visible       locator=${new_york}
    Tap                                 locator=${new_york}
Select To City 
    Tap                                 locator=${to_city_dropdown}
    Wait Until Element Is Visible       locator=${london}
    Tap                                 locator=${london}    

Select a Class
    Tap                                 locator=${class_dropdown}
    Wait Until Element Is Visible       locator=${economy}
    Tap                                 locator=${economy}    

Tap Start Date 
    Tap                                  locator=${start_date_btn}
    Wait Until Element Is Visible        locator=${tgl_1}
    Tap                                  locator=${tgl_1}    
    Tap                                  locator=${ok_btn_start}   

Tap End Date 
    Tap                                     locator=${end_date_btn}
    Wait Until Element Is Visible           locator=${tgl_2}
    Tap                                     locator=${tgl_2}    
    Tap                                     locator=${ok_btn_end}   

Tap Flight
    Wait Until Element Is Visible       locator=${radio_btn_flight}
    Tap                                 locator=${radio_btn_flight}  

Tap Book Button
    Tap                                 locator=${book_btn}  

Tap Price 
    Wait Until Element Is Visible       locator=${price_1}
    Tap                                 locator=${price_1}

Tap Confirm
    Tap                                 locator=${confirm_btn}

Verify Message Booked
    Wait Until Element Is Visible       locator=${fligt_book_message}

