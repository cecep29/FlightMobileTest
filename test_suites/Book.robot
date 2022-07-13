*** Settings ***
Library             AppiumLibrary
Resource            ../pageObjects/SignIn/signin_keywords.robot
Resource            ../pageObjects/Book/book_keywords.robot
Resource            ../base.robot
Suite Setup          base.Open App 
Suite Teardown       Close Application

*** Test Cases ***
User Login Before Booking a Flight
    User Login 

User Should Be Able Booking a Flight 
    Tap Book Tab Button 
    Select From City 
    Select To City 
    Select a Class
    Tap Start Date 
    Tap End Date 
    Tap Flight
    Tap Book Button

Confirm Price
    Tap Price 
    Tap Confirm

User Should Be Able See Message Booked
    Verify Message Booked
