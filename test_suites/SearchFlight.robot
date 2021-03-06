*** Settings ***
Resource            ../pageObjects/SignIn/signin_keywords.robot
Resource            ../pageObjects/SearchFlight/search_keywords.robot
Resource            ../pageObjects/SignIn/signin_keywords.robot
Resource            ../base.robot
Suite Setup     Run Keywords    base.Open App
...             AND             User Login With Valid Data  
Suite Teardown       Close Application

*** Test Cases ***
User Should Be Able Search Flight Number 
    Tap Search Tab    
    Verfiy Input Flight Number Appears          
    Input Flight Number                     flight_no=DA935 
    Tap Search Button 

Verfiy users get information about flights according to flight number
    Verify Destination Appears
    Verify Schedule Appears
    Verify Departed Appears
    Verify Flight Number Appears
    Verify Schedule Value Appears
    Verify Departed Value Appears
