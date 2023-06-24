*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/locators.py
Variables    ../TestData/TestData.py

*** Keywords ***

Gecerli mail ve sifreyi gir
    Input Text    ${emailInput}    ${emailStr}
    Input Password    ${passwordInput}    ${passwordStr}
    
Sigin butonuna tıkla    
    Click Button    ${signUpBtn}
    

mail ve sifreyi gir
    [Arguments]    ${mail adres}    ${sifre}

    Input Text    ${emailInput}    ${emailStr}
    Input Password    ${passwordInput}    ${passwordStr} 

Girisin basarısız oldugunu dogrula 
    Sleep    5
    ${errorText}    Get Text    ${error}
    Should Be Equal    ${errorText}    Incorrect email or password. 


