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
Test Teardown      Finalizar

*** Test Cases ***

Perfume Luana
  [Tags]       CT001
  Dado que acesso o menu "Nosso Produto"
  E Seleciono o perfume "Perfume Essencial"
  E clico na opção "carrinho" para verificar a compra
  # E clico em "Pagar"
  # Então o sistema apresenta a tela com as opções da compra e a opção de pagamento


