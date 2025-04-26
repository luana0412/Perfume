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
#${BROWSER}       headlesschrome   
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
    #${DATA_ATUAL}=                      Get Current Date                                                  result_format=%d.%m.%Y_%H%M
    #Set Suite Variable                  ${DATA_ATUAL}
    Capturar print tela
    Register Keyword To Run On Failure    Capturar print tela
    #Upload anexo RQM    Evidencia    ${OUTPUT DIR}    log    html

Finalizar
    Close Browser

Capturar print tela
    Capture Page Screenshot      EMBED

