**** Settings ***
Documentation    GALA FURNİTURE projesi 
Library    SeleniumLibrary

Resource    ../resuorses/Keywords/HomePage.robot  
Resource    ../resuorses/Keywords/RegisterPage.robot
Resource    ../resuorses/Keywords/LoginPage.robot

Variables    ../resuorses/TestData/TestData.py


Test Setup    Open Browser    ${URL}    ${BROWSER}  
Test Teardown    Close Browser  

*** Test Cases ***
Yeni bir hesap olustur 
    Maximize Browser Window
    Create linkine tikla
    Uyelik formunu doldur
    Logout butonu gorulmeli

Login testi
    [Documentation]    Aktif bir mail adresi ve sifresi ile giris yap
    Login linkine tikla
    Gecerli mail ve sifreyi gir
    Sigin butonuna tıkla   
    Logout butonu gorulmeli

Negatif login testi
    [Documentation]    Varolmayan bir mail adresi veya hatalı bir sifre ile giris yap      
    Login linkine tikla
    mail ve sifreyi gir    ${gecersizEmailStr}    ${gecersizpasswordStr} 
    Sigin butonuna tıkla 
    Girisin basarısız oldugunu dogrula       



    

