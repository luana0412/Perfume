*** Settings ***
Library                SeleniumLibrary
Resource               ../Resources/BDDpt-br.robot
Resource               ../Resources/base.robot
Resource               GlobalPage.robot


#Leitura Json
Resource                ../Resources/json.robot
Library                 JSONLibrary


*** Variables ***


*** Keywords ***
#######----Perfume Luana------#######
 Dado que acesso o menu "Nosso Produto"
    Scroll Element Into View                   //html/body/section[1]/div[2]/a[2]
    Click Element                                //html/body/section[1]/div[2]/a[2]   
    BuiltIn.Sleep    3
    Capturar print tela
    
E Seleciono o perfume "Perfume Essencial"
    Acessar no menu "Perfume Essencial" 
    Capturar print tela

E clico na opção "carrinho" para verificar a compra
   Scroll Element Into View       //*[@id="navbarNav"]/ul/li[5]/a
   Click Element    //*[@id="navbarNav"]/ul/li[5]/a
   BuiltIn.Sleep    3
  Capturar print tela

E seleciono no menu "Auditoria e Log"
    Acessar no menu "Auditoria e Log" 
    Capturar print tela
    
E Aciono o submenu "Títulos"
    Acessar no menu Protesto "Títulos" 

E informo o Beneficiário conforme a massa
  ${BENEFICIARIO} =       Pegar valor do Json    ${SEQUENCIAL}    MPR_005_0002_Cod_Beneficiario
  Click Element    //*[@id="inputCodBeneficiario"]
  Press Keys    None    ${BENEFICIARIO} 
  BuiltIn.Sleep    3
  Capture Page Screenshot

E clico em "Filtrar"
    Click Button    //*[@id="btn-filtrar"]
    BuiltIn.Sleep   3

#Então o sistema exibirá os dados correspondente a informação inserida na pesquisa, no local de resultado da pesquisa da filtragem
  #Então o sistema apresenta a mensagem de inclusão com sucesso
  #BuiltIn.Sleep   1
  #Page Should Contain    Título incluído com sucesso.
  #Capture Page Screenshot  

#####-----MPR.005.003.Página Inicial - Filtrar Busca de Títulos – Beneficiário
E informo o Beneficiário conforme a massa MPR_005_0003_Beneficiario
  ${BENEF} =       Pegar valor do Json    ${SEQUENCIAL}    MPR_005_0003_Benef
  Click Element    //*[@id="inputBeneficiario"]
  Input Text    //*[@id="inputBeneficiario"]   ${BENEF}  
  BuiltIn.Sleep    3
  Capture Page Screenshot

#####-----MPR.005.004.Página Inicial - Filtrar Busca de Títulos – CPF/CNPJ do Beneficiário
E informo o Beneficiário conforme a massa MPR_005_0004_CNPJ
  ${CNPJ} =       Pegar valor do Json    ${SEQUENCIAL}    MPR_005_0004_CNPJ
  Click Element    //*[@id="inputCpfCnpjBeneficiario"]
  Press Keys    None    ${CNPJ} 
  BuiltIn.Sleep    3
  Capture Page Screenshot

####------MPR.005.005.Página Inicial - Filtrar Busca de Títulos – Pagador 
E informo o Beneficiário conforme a massa MPR_005_0005_Pagador
  ${Pagador} =       Pegar valor do Json    ${SEQUENCIAL}    MPR_005_0005_Pagador
  Click Element    //*[@id="inputPagador"]
  Press Keys    None    ${Pagador} 
  BuiltIn.Sleep    3
  Capture Page Screenshot

####------MPR.005.006.Página Inicial - Filtrar Busca de Títulos – Situação
E informo o Beneficiário conforme a massa MPR_005_0006_Situação 
  ${PROTESTADO} =       Pegar valor do Json    ${SEQUENCIAL}    MPR_005_0006_Situacao
  Click Element    //*[@id="inputSituacao"]
  Press Keys    None    ${PROTESTADO} 
  BuiltIn.Sleep    3
  Capture Page Screenshot

####------MPR.005.007.Página Inicial - Filtrar Busca de Títulos – Emissão Fim
E informo o Beneficiário conforme a massa MPR_005_0007_Emissao
  ${EMISSAO} =       Pegar valor do Json    ${SEQUENCIAL}    MPR_005_0007_Emissao
  Click Element    //*[@id="inputDtVencimentoFinal"]
  Press Keys    None    ${EMISSAO} 
  BuiltIn.Sleep    3
  Capture Page Screenshot

####------MPR.005.008.Página Inicial - Filtrar Busca de Títulos – Vencimento Início  
E informo o Beneficiário conforme a massa MPR_005_0008_Vencimento
  ${Vencimento} =       Pegar valor do Json    ${SEQUENCIAL}    MPR_005_0008_Vencimento
  Click Element    //*[@id="inputDtVencimentoInicial"]
  Press Keys    None    ${Vencimento} 
  BuiltIn.Sleep    3
  Capture Page Screenshot

####------MPR.005.009.Página Inicial - Detalhar Títulos Pendentes ou com Erros
E informo o Beneficiário conforme a massa MPR_005_0009_Erros
  ${ERROS} =       Pegar valor do Json    ${SEQUENCIAL}    MPR_005_0009_Erros
  Click Element    //*[@id="inputDtVencimentoFinal"]
  Press Keys    None    ${ERROS} 
  BuiltIn.Sleep    3
  Capture Page Screenshot

  