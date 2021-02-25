***Settings***
Documentation       Testando o player de paródias

#importando arquivo com açoes de login
Resource    ../resources/base.robot

# Gancho para tirar screenshot apos a execucao de cada teste 
Test Teardown     Take Screenshot

***Test Cases***
Reproduzir paródia Bug de Manhã
    Open Login Page
    Login With      papito@parodify.com    pwd123
    Logout Link Should Be Visible 
    Go To Search Page
    Go to Sertanejo Category
    Open Album From     Marcus e Debug
    Play Song       Bug de Manhã
    Song Should Be Playing      Bug de Manhã


