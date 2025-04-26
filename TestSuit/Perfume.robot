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

