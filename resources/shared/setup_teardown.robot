*** Settings ***
Resource    ../resources/main.robot

*** Keywords ***

Acessar o site register
    Open Browser    ${geral.URL}    ${geral.BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser
    