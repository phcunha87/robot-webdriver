*** Settings ***
Library    FakerLibrary
Resource    ../resources/main.robot


*** Variables ***

&{cadastro}  
...  escreverPrimeiroNome=//input[contains(@placeholder,'First Name')]
...  escreverSegundoNome=//input[contains(@placeholder,'Last Name')]
...  escreverEndereco=//textarea
...  escreverEmail=//input[@type="email"]
...  escreverTelefone=//input[@type="tel"]
...  clicaOpcaoMasculina=name:radiooptions
...  clicaOpcaoMovies=id:checkbox2
...  selecionaSkills=id:Skills
...  submitButton=id:submitbtn


*** Keywords ***
Dado que acesso o site register
    Open Browser    ${geral.URL}    ${geral.BROWSER}
    Maximize Browser Window
    
Quando eu preencho os dados
    ${primeiRoNome}    FakerLibrary.First Name
    Input Text    ${cadastro.escreverPrimeiroNome}    ${primeiRoNome}
    ${segundoNome}    FakerLibrary.Last Name
    Input Text    ${cadastro.escreverSegundoNome}    ${segundoNome}  
    ${ENDERECOFAKE}    FakerLibrary.Address
    Input Text    ${cadastro.escreverEndereco}    ${ENDERECOFAKE}
    ${EMAILFAKE}  FakerLibrary.Email
    Input Text    ${cadastro.escreverEmail}    ${EMAILFAKE}
E Clicar na opção masculino
    Click Element     ${cadastro.clicaOpcaoMasculina} 
     
E Clica na opção movies
    Click Element    ${cadastro.clicaOpcaoMovies}
E Selecionar Skill
    Select From List By Value    ${cadastro.selecionaSkills}    Android 
   