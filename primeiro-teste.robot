*** Settings ***
Library     SeleniumLibrary

*** Variables ***

${CAMPO_LOGIN}      id:exampleInputEmail1
${CAMPO_PASSWORD}   id:password
${CARD}             //div[contains(@class, "bg-dark px-5 pb-3 pt-4 border-radius-4 card-offer")]//h5[normalize-space()="Bootcamp Spring React 3.0"]
${URL}              https://learn.devsuperior.com/auth/login

*** Keywords ***
Abrir navegador e acessar o site DevSuperior
    Open Browser    ${URL}    browser=Chrome

Adicionar o login e senha e clicar no botão Entrar
    [Arguments]     ${email}      ${password}
    Wait Until Element Is Visible   ${CAMPO_LOGIN}
    Input Text      ${CAMPO_LOGIN}  ${email}
    Wait Until Element Is Visible   ${CAMPO_PASSWORD}
    Input Text      ${CAMPO_PASSWORD}   ${password}
    Sleep   3s
    Wait Until Element Is Visible   //button
    Mouse Over    //button
    Click Element   //button
    Sleep   3s

Verificar se o acesso foi permitindo e se o nome do curso está sendo exibido
    Wait Until Element Is Visible   ${CARD}
    Element Should Be Visible   ${CARD}
    Sleep   3s

*** Test Cases ***

Meu primeiro teste Alura
    Abrir navegador e acessar o site DevSuperior    
    Adicionar o login e senha e clicar no botão Entrar      eliezer.moraes@outlook.com      9a7e5i3o1U-
    Verificar se o acesso foi permitindo e se o nome do curso está sendo exibido



    
