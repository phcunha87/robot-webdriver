*** Settings ***
Resource    ../../resources/main.robot
Test Setup    Acessar o site register
Test Teardown    Fechar navegador


*** Test Cases ***
Cenário 1: Deve realizar cadastro novo
    Dado eu preencho os dados
    E clicar na opção masculino
    Quando Clica na opção movies
    Entao Selecionar Skill
