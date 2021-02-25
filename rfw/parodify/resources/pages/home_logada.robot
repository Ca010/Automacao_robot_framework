***Settings***
Documentation           Ações da página home logada

***Variables***
${Logout_link}      css=a[href$=sign_out]

***Keywords***
Logout Link Should Be Visible 
    Wait For Elements State         ${Logout_link}       visible     10

Do Logout
    Click      ${Logout_link}

Go To Search Page
    Click       css=a[href*=search]
    Wait For Elements State       xpath=//h2[contains(text(), "Buscar")]     visible     5