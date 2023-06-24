*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/locators.py


*** Keywords ***
Create linkine tikla
    Click Link    ${createAccountLink}
    Sleep    3    

Logout butonu gorulmeli  
    Element Should Be Visible      ${logoutlink}

Login linkine tikla
    Click Link    ${loginlink}    