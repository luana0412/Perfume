*** Settings ***

Library                  SeleniumLibrary
Resource               ../Resources/base.robot
Resource               ../Resources/BDDpt-br.robot

*** Variables ***

${LOADING}                     xpath=//*[@class='modalBgLoading'][(contains(@style,'block;'))]

*** Keywords ***
aguarda página
    Wait Until Element Is Not Visible    ${LOADING}
    BuiltIn.Sleep     4


Acessar no menu "${OPCAO}"
    Run Keyword If   '${OPCAO}' == 'Perfume Essencial'                          Scroll Element Into View      //*[@id="product"]/div[2]/div[2]/div[1]/div/div/button   
    Click Element    //*[@id="product"]/div[2]/div[2]/div[1]/div/div/button
    Run Keyword If   '${OPCAO}' == 'Perfume Elegante'                                                    click Element     //*[@id="product"]/div[2]/div[2]/div[2]/div/div/button
    Run Keyword If   '${OPCAO}' == 'Perfume Casual'                                                      click Element     //*[@id="product"]/div[2]/div[2]/div[3]/div/div/button
    Run Keyword If   '${OPCAO}' == 'Perfume Intenso'                                                     click Element     //*[@id="product"]/div[2]/div[2]/div[4]/div/div/button
    Run Keyword If   '${OPCAO}' == 'Perfume Suave'                                                       Click Element      //*[@id="product"]/div[2]/div[2]/div[5]/div/div/button
    aguarda página
    Unselect Frame

 Acessar a opção "${OPCAO}" 
    Run Keyword If   '${OPCAO}' == 'Pagar'                                            Click Element    //*[@id="cart"]/div/div[2]/div/div/div/div[2]/a
    Run Keyword If   '${OPCAO}' == 'Esvaziar Carrinho'                                Click Element     //*[@id="cart"]/div/div[2]/div/div/div/div[1]/form/button
    aguarda página
    Unselect Frame
    
