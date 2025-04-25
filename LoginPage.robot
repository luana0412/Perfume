* Settings *
Library                SeleniumLibrary
Resource               ../Resources/BDDpt-br.robot
Resource               ../Resources/base.robot
Resource               GlobalPage.robot
 
 
#Leitura Json
Resource                ../Resources/json.robot
Library                 JSONLibrary
 
 
* Variables *
${ENDERECO_USUARIO}    //*[@id="i0116"]
${ENDERECO_SENHA}      //*[@id="i0118"]
 
 
* Keywords *
#### PASSOS
#Dado que estou na página de login
#   Inicializar
    
Quando informo o usuário
    Maximize Browser Window  
    BuiltIn.Sleep    5
    ${USUARIO}    Pegar valor do Json    ${SEQUENCIAL}    usuario
    Input Text        ${ENDERECO_USUARIO}                 ${USUARIO}
    Click Element    //*[@id="idSIButton9"]
    Capturar print tela
 
E informo a senha
    BuiltIn.Sleep    5
    ${SENHA}      Pegar valor do Json    ${SEQUENCIAL}    senha
    Input Password    ${ENDERECO_SENHA}                 ${SENHA}
    Capturar print tela
    Click Button    //*[@id="idSIButton9"]
    aguarda página
    Click Button    //*[@id="idSIButton9"]

Então realizo o login
    aguarda página
    Capturar print tela
