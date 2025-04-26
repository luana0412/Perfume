*** Settings ***
Library        SeleniumLibrary
Library        DateTime
Library        OperatingSystem
Library        String
Library        Lib/AbrirBrowserIEcomEdge.py
Resource       ../Pages/LoginPage.robot

#Leitura Json
Resource                ../Resources/json.robot
Library                 JSONLibrary


*** Variables ***
${BROWSER}       Chrome          
${LOADING}       //*[@class='modalBgLoading'][(contains(@style,'block;'))]
${edgepath}      C:\\Program Files (x86)\\Microsoft\\Edge\\Application\\msedge.exe


*** Keywords ***
Abrir Navegador

    [Arguments]    ${SEQUENCIAL}
    BuiltIn.Sleep    2
    Set Suite Variable    ${SEQUENCIAL}
    ${URL}    Pegar valor do Json    ${SEQUENCIAL}    URL
    Open Browser                         ${URL}             ${BROWSER}        
    Maximize Browser Window
    Capturar print tela
    Register Keyword To Run On Failure    Capturar print tela

Finalizar
    Close Browser

Capturar print tela
    Capture Page Screenshot      EMBED

