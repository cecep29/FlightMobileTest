*** Settings ***
Variables           signin_locators.yaml


*** Keywords ***
Verify Sign In Button Appears
    Wait Until Element Is Visible           locator=${sign_in_btn} 

Tap Sign In Button 
    Tap                                     locator=${sign_in_btn}

Verify Input Username Appears
    Wait Until Element Is Visible           locator=${input_username}

Verify Input Password Appears
    Wait Until Element Is Visible           locator=${input_password}

Input Username 
    [Arguments]                             ${username}
    Input Text                              locator=${input_username}           text=${username}

Input Password 
    [Arguments]                             ${password}
    Input Text                              locator=${input_password}           text=${password}

Tap Login Button
    Tap                                     locator=${login_btn}

Verify Logout Button Appears
    Wait Until Element Is Visible           locator=${sign_in_btn}
    
Verify Ngen Digital Text Appears
    Wait Until Element Is Visible           locator=${text_ngendigital}          


User Login With Valid Data 
    Wait Until Element Is Visible           locator=${sign_in_btn} 
    Tap                                     locator=${sign_in_btn} 
    Wait Until Element Is Visible           locator=${input_username}
    Wait Until Element Is Visible           locator=${input_password}
    Input Text                              locator=${input_username}           text=support@ngendigital.com
    Input Text                              locator=${input_password}           text=abc123
    Tap                                     locator=${login_btn}