*** Settings ***
Variables       home_locators.yaml

** Keywords ***
Verify Logo
    Element Should Be Visible           ${logo}

Verify sign in button
    Element Should Be Visible           ${sign_in_btn}

Verify book button
    Element Should Be Visible           ${book_btn}

Verify search button 
    Element Should Be Visible           ${search_btn}

Verify check in button
    Element Should Be Visible           ${checkIn_btn}
    
Verify image home screen
    Element Should Be Visible           ${home_image}
