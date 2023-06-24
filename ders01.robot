*** Settings ***
Library    Selenium2Library

*** Variables ***


*** Keywords ***

*** Test Cases ***
ilk test senaryo    
    #Log To Console    merhaba robot framework
    #${isim}    Set Variable    Harun   
    #Log To Console    ismim: ${isim} 

    ${sayi1}    Set Variable    2    
    ${sayi2}    Set Variable    5

    #${sonuc}    Evaluate    ${sayi1}+${sayi2}

    #Log To Console    islem sonucu ${sonuc}  

    IF  ${sayi1} > ${sayi2}
        Log To Console    ${sayi1} buyuktur ${sayi2} 
        
    END
    
    IF  ${sayi1} <${sayi2}
        Log To Console    ${sayi1} kucuktur ${sayi2}
        
    END
    
*** Test Cases ***
ikinciTest    
    ${sayi1}    Set Variable    10    
    ${sayi2}    Set Variable    52

    IF  ${sayi1} > ${sayi2}
        Log To Console    ${sayi1} buyuktur ${sayi2} 
        
    ELSE IF     ${sayi1} <${sayi2}
        
         Log To Console    ${sayi1} kucuktur ${sayi2} 

    ELSE
        Log To Console     ${sayi1} esittir ${sayi2}
    END          
    