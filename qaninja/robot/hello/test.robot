**** Settings ***
Library     app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=           Welcome     Camila
    Should Be Equal      ${result}   Ola Camila, Bem vindo ao curso básico de robot framework! 