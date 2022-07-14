*** Settings ***
Resource            ../pageObjects/SignIn/signin_keywords.robot
Resource            ../base.robot
Suite Setup          base.Open App 
Suite Teardown       Close Application

*** Test Cases ***
Verify Sign In Button On HomeScreen
    Verify Sign In Button Appears
    Tap Sign In Button 

Verify Sign In Screen 
    Verify Input Username Appears
    Verify Input Password Appears

User can sign in 
    Input Username              username=support@ngendigital.com
    Input Password              password=abc123
    Tap Login Button

Verify User has been logged
    Verify Logout Button Appears
    Verify Ngen Digital Text Appears

