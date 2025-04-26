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
#######----MPR.005.002.Página Inicial - Filtrar Busca de Títulos – Código do Beneficiário
Dado que acesso o menu principal
    Click Element             //*[@id="menu-button"]
    Capturar print tela