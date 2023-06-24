*** Settings ***
Library    Collections


*** Test Cases ***
Koleksiyonlar
    ${isimler}    Create List

    Append To List    ${isimler}    yusuf    Barbaros    Salim    ömer    resul    mehmet

   # Log To Console    ${isimler} 
   #${e}    Get From List    ${isimler}    1
   #Log To Console    ${e}
   # Remove From List    ${isimler}    0
   #Remove Values From List    ${isimler}    Yusuf
   # Log To Console    ${isimler}

   # Yusuff elemanı listede olmadıgı icin test fail olur 
   # eger eleman bulunursa konsolda birsey yazmaz fakat test pass olur 
   #  List Should Contain Value    ${isimler}   Yusuff

   # ******* Robot framework collections yazıp aratarak diger collectionslara ulasabiliriz 

   #Set List Value    ${isimler}    0    Renkoglu
   #Log To Console    ${isimler} 

   #Log To Console    ${isimler}[1]

  # FOR  ${isim}  IN  ${isimler}
  # Log To Console    Eleman: ${isim}
   
  # END

   # for dongusunde ${isimler} olarak alındıgında dizi olarak yazdırır

   # FOR  ${isim}  IN  @{isimler}
   #Log To Console    Eleman: ${isim}
   
  # END

    # for dongusunde @{isimler} olarak alındıgında dizi olarak yazdırır

  #   FOR  ${isim}  IN  @{isimler}
  # Log To Console    Eleman: ${isim}

  # Exit For Loop If    '${isim}' == 'ömer'
   
  # END

   # FOR  ${isim}  IN  @{isimler}
   #  IF  '${isim}' == 'Salim'

   #  Log To Console    aradıgım sonuc buldum    ${isim}

   # ELSE
   # Log To Console    aradıgım sonuc bulunmadı
   #  END
  
    #  END

   #${sayilar}    Create List    1    2    3    4    5    6 

    #FOR    ${sayi}  IN    @{sayilar}

    #IF  ${sayi} >= 3

    #Log To Console    ${sayi} 3 e esit veya buyuktur
    #ELSE
     #   Log To Console    ${sayi} 3 ten kucuktur
        
    #END
      
    
   # END
    
   # FOR  ${sayi}  IN RANGE    100

   # Log To Console    ${sayi}
    
   # END
    
    #FOR  ${sayi}  IN RANGE    50    101

    #Log To Console    ${sayi}
    
    #END

   # ${i}    Set Variable    0
   # WHILE  ${i} <=10
    #    Log To Console    While ile yazdirildi: ${i}
    #    ${i}    Evaluate    ${i}+1
        
   # END

   ${i}    Set Variable    0 
   ${listeUzunlugu}    Get Length    ${isimler}

   # WHILE    ${i} <    ${listeUzunlugu}
    Log To Console    ${isimler}[${i}]
    ${i}    Evaluate    ${i}+1    
       
  # END
   
    