*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

Variables    ../locators/locators.py
Variables    ../TestData/TestData.py

*** Keywords ***
Uyelik formunu doldur
    InputText    ${isim}    ${name}
    InputText    ${soyisim}    ${firtname}    
    Input Text    ${email}    ${emailStr}
    Input Password    ${password}    ${passwordStr}
    Click Button    ${createButonu} 

  #  ${FLisim}    FakerLibrary.Name
  #  Input Text    ${isim}    ${FLisim}

  #  ${Flsoyisim}    FakerLibrary.Last Name
  # Input Text    ${soyisim}    ${Flsoyisim}

    


   
    



 