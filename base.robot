*** Settings ***
Library             AppiumLibrary

*** Variables ***
${URL}                  http://127.0.0.1:4723/wd/hub
${PLATFORM}             android
${DEVICE}               emulator-5554
${ACTIVITY}             com.example.myapplication.MainActivity 
${PACKAGE}              com.example.myapplication
${PLATFORM_VERSION}     9


*** Keywords ***
Open App 
    Open Application            ${URL}
    ...                         platformName=${PLATFORM}
    ...                         platformVersion=${PLATFORM_VERSION}
    ...                         deviceName=${DEVICE}
    ...                         automationName=UiAutomator2
    ...                         newCommandTimeOut=2500
    ...                         appActivity=${ACTIVITY}
    ...                         appPackage=${PACKAGE}



