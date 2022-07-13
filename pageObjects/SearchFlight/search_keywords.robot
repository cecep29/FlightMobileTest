*** Settings ***
Variables           search_locators.yaml

*** Keywords ***
User login 
    signin_keywords.Verify Sign In Button Appears
    signin_keywords.Tap Sign In Button 
    signin_keywords.Verify Input Username Appears
    signin_keywords.Input Username                          support@ngendigital.com
    signin_keywords.Verify Input Password Appears
    signin_keywords.Input Password                          abc123
    signin_keywords.Tap Login Button

Tap Search Tab 
   Tap                                      locator=${search_tab_btn}

Verfiy Input Flight Number Appears
    Wait Until Element Is Visible          locator=${enter_flight_text} 

Input Flight Number 
    [Arguments]                             ${flight_no}
    Input Text                              locator=${input_flight_no}            text=${flight_no}

Tap Search Button 
    Tap                                     locator=${search_btn}

Verify Destination Appears
    Wait Until Element Is Visible           locator=${destination_text}

Verify Schedule Appears
    Wait Until Element Is Visible           locator=${schedule_text}

Verify Departed Appears
    Wait Until Element Is Visible           locator=${departed_text}

Verify Flight Number Appears
    Wait Until Element Is Visible           locator=${flight_no}

Verify Schedule Value Appears
    Wait Until Element Is Visible           locator=${schedule_value}
    
Verify Departed Value Appears
    Wait Until Element Is Visible           locator=${departed_value}