*** Settings ***
Resource            ../pageObjects/HomeScreen/homescreen_keywords.robot
Resource            ../base.robot
Test Setup          base.Open App 
Test Teardown       Close Application

*** Test Cases ***
User Should See Home Screen
    Verify Logo
    Verify sign in button
    Verify book button
    Verify search button 
    Verify check in button
    Verify image home screen
   
