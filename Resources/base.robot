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
    Upload anexo RQM    Evidencia    ${OUTPUT DIR}    log    html

Realizar Login
    Quando informo o usuário
    E informo a senha
    Então realizo o login

#Mover Relatórios
    #${DATA_ATUAL}=                         Get Current Date                                                  result_format=%d.%m.%Y_%H%M
    #Set Suite Variable                     ${DATA_ATUAL}
    #Create Directory                       ${EXECDIR}\\Evidencias\\${DATA_ATUAL}
    #Move Files                             geckodriver-*.log            ${EXECDIR}\\Evidencias\\${DATA_ATUAL}
    #Move Files                             selenium-screenshot-*.png    ${EXECDIR}\\Evidencias\\${DATA_ATUAL}

Finalizar
    Close Browser

Capturar print tela
    Capture Page Screenshot      EMBED

Upload anexo RQM
    [Documentation]  Realiza o Upload de arquivo para o RQM via rqmAdapter.
        #Você pode anexar seus próprios arquivos e links, como um arquivo de log ou um link para um site.
        #Para realizar o envio deve seguir um padrao de envio, nome da evidência que vai ser apresentada no RQM seguindo sinal de <=>, o caminho absoluto de oinde está o repositório do arquivo, acompanhado do seu nome completo sem caractere especial seguido de seu formato.
        #Por exemplo, o conteúdo do arquivo a seguir adicionaria o arquivo do tipo .log ao resultado da execução. importLog=c:/C:/Users/fxxxxx/vm/venv/repotools_import.log
        #Para utilizar a keyword é solicitado como argumentos "label", "path", "fileName" e fileType.
    [Arguments]    ${label}    ${path}    ${fileName}    ${fileType}
    IF    "${rqmAdapter}"=="true"
        ${echo}=    Set Variable    ${label}=${path}/${fileName}.${fileType}
        ${echo}=	Replace String    ${echo}    \\    \/
        ${return}=    Run    echo ${echo} >> %qm_AttachmentsFile%
    END
