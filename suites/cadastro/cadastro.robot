*** Settings ***
Resource    ../../resources/main.robot
Test Setup    Acessar o site register
Test Teardown    Fechar navegador



*** Test Cases ***
Cenário 1: Deve realizar cadastro
    Dado eu preencho os dados
    Quando clicar na opção masculino
    E Clica na opção movies
    Entao Selecionar Skill
