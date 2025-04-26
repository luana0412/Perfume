*** Settings ***

Resource        ../Resources/base.robot
Resource        ../Pages/Perfume_Page.robot
Resource        ../Pages/GlobalPage.robot
#Resource        ../Resources/BDDpt-br.robot

Library        SeleniumLibrary
#Library        pyautogui

Resource                ../Resources/json.robot
Library                 JSONLibrary

Suite Setup        Abrir Navegador       1
Test Setup         Realizar Login
#Test Teardown      Finalizar

*** Test Cases ***

MPR.005.0001-Página Inicial - Tela Principal
  [Tags]       CT001
  Dado que acesso o menu principal
  E seleciono no menu "Protesto"
  E Aciono o submenu "Títulos"
  E informo o Beneficiário conforme a massa
  E clico em "Filtrar"


MPR.005.002.Página Inicial - Filtrar Busca de Títulos – Código do Beneficiário
  [Tags]        CT001
  Dado que acesso o menu principal
  E seleciono no menu "Protesto"
  E Aciono o submenu "Títulos"
  E informo o Beneficiário conforme a massa
  E clico em "Filtrar"
  #Então o sistema exibirá os dados correspondente a informação inserida na pesquisa, no local de resultado da pesquisa da filtragem	

MPR.005.003.Página Inicial - Filtrar Busca de Títulos – Beneficiário  
    [Tags]        CT002
  Dado que acesso o menu principal
  E seleciono no menu "Protesto"
  E Aciono o submenu "Títulos"
  E informo o Beneficiário conforme a massa MPR_005_0003_Beneficiario
  E clico em "Filtrar"


MPR.005.004.Página Inicial - Filtrar Busca de Títulos – CPF/CNPJ do Beneficiário  
      [Tags]        CT003
  Dado que acesso o menu principal
  E seleciono no menu "Protesto"
  E Aciono o submenu "Títulos"
  E informo o Beneficiário conforme a massa MPR_005_0004_CNPJ
  E clico em "Filtrar"


MPR.005.005.Página Inicial - Filtrar Busca de Títulos – Pagador
        [Tags]        CT004
  Dado que acesso o menu principal
  E seleciono no menu "Protesto"
  E Aciono o submenu "Títulos"
  E informo o Beneficiário conforme a massa MPR_005_0005_Pagador
  E clico em "Filtrar"

MPR.005.006.Página Inicial - Filtrar Busca de Títulos - Situação  
          [Tags]        CT005
  Dado que acesso o menu principal
  E seleciono no menu "Protesto"
  E Aciono o submenu "Títulos"
  E informo o Beneficiário conforme a massa MPR_005_0006_Situação
  E clico em "Filtrar" 
  
MPR.005.007.Página Inicial - Filtrar Busca de Títulos – Emissão Fim  
            [Tags]        CT006
  Dado que acesso o menu principal
  E seleciono no menu "Protesto"
  E Aciono o submenu "Títulos"
  E informo o Beneficiário conforme a massa MPR_005_0007_Emissao
  E clico em "Filtrar"

MPR.005.008.Página Inicial - Filtrar Busca de Títulos – Vencimento Início
            [Tags]        CT008
  Dado que acesso o menu principal
  E seleciono no menu "Protesto"
  E Aciono o submenu "Títulos"
  E informo o Beneficiário conforme a massa MPR_005_0008_Vencimento
  E clico em "Filtrar" 

MPR.005.009.Página Inicial - Detalhar Títulos Pendentes ou com Erros
            [Tags]        CT009
  Dado que acesso o menu principal
  E seleciono no menu "Protesto"
  E Aciono o submenu "Títulos"
  E informo o Beneficiário conforme a massa MPR_005_0009_Erros
  E clico em "Filtrar" 