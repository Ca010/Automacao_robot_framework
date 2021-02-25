***Settings***
Documentation       Ações de navegação no parodify

***Keywords***
Go To Search Page
    Click       css=a[href*=search]
    Wait For Elements State       xpath=//h2[contains(text(), "Buscar")]     visible     5

Open Album From
    [Arguments]     ${artist_name}    

    Click       xpath=//p[contains(text(), "${artist_name}")]/.. 
    Wait For Elements State       xpath=//h2[contains(text(), "Músicas")]     visible     5

Go to Sertanejo Category
     Click       xpath=//img[contains(@src, "sertanejo.png")]/..   
     Wait For Elements State       xpath=//h2[contains(text(), "Sertanejo")]     visible     5