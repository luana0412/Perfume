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

E clico em "Pagar"
    Acessar a opção "Pagar" 
    Capturar print tela
    
Então o sistema apresenta a tela com as opções da compra e a opção de pagamento 
    Element Should Contain           //*[@id="cart"]/div/div[3]/div/div[2]/div/a     Ir para pagamento 
    BuiltIn.Sleep    3
    Capturar print tela

#######----Perfume Luana - varios perfumes------#######

E Seleciono varios perfumes para compra
    Acessar no menu "Perfume Essencial" 
    Capturar print tela
    BuiltIn.Sleep    3
    Acessar no menu "Perfume Elegante" 
    Capturar print tela
    BuiltIn.Sleep    3

 Então o sistema apresenta a tela com todas as opções da compra
    Element Should Contain           //*[@id="cart"]/div/div[3]/div/div[2]/div/a     Ir para pagamento 
    BuiltIn.Sleep    3
    Capturar print tela

#######----Perfume Luana - esvaziar carrinho------#######
E Seleciono o perfume "Perfume Suave"
    Acessar no menu "Perfume Suave" 
    Capturar print tela
    BuiltIn.Sleep    3
E clico na opção "carrinho"
  Scroll Element Into View       //*[@id="navbarNav"]/ul/li[5]/a
   Click Element    //*[@id="navbarNav"]/ul/li[5]/a
   BuiltIn.Sleep    3
  Capturar print tela

E clico em "esvaziar carrinho"
    Click Element                               //*[@id="cart"]/div/div[2]/div/div/div/div[1]/form/button 
    BuiltIn.Sleep    3
    Capturar print tela
  
Então o sistema apresenta a tela com o carrinho vazio
  Page Should Contain Element           //*[@id="cart"]/div/div[2]/div/p     
  BuiltIn.Sleep    3
  Capturar print tela
