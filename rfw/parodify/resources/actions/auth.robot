**Settings***
Documentation       Ações da funcionalidade de autorização/autenticação

***Variables***
${Logout_link}      css=a[href$=sign_out]

***Keywords***
Open Login Page
    #define o tipo de navegador e o tipo de execução
        New Browser     chromium        false
    #abrir a url na página que eu quero    
        New Page        http://parodify.herokuapp.com/users/sign_in      
      
Login With
        [Arguments]     ${email_arg}       ${pass_arg}
                                            
        Fill Text       css=input[name*=email]      ${email_arg}
        Fill Text       css=#user_password          ${pass_arg}
        
        Click           css=input[value='Log in']

Alert Should Be
        [Arguments]     ${expect_arg}

        Get Text           css=.is-danger .message-body     ==    ${expect_arg}

Logout Link Should Be Visible 
    Wait For Elements State         ${Logout_link}       visible     10

Do Logout
    Click      ${Logout_link}