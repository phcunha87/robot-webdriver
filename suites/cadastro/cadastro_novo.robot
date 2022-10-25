*** Settings ***
Resource    ../../resources/main.robot
Test Setup    Acessar o site register
Test Teardown    Fechar navegador


*** Test Cases ***
Cenário 1: Deve realizar cadastro novo
    Quando eu preencho os dados
    E Clicar na opção masculino
    E Clica na opção movies
    E Selecionar Skill
