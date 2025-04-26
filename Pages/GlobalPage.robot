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
    Run Keyword If   '${OPCAO}' == 'Perfume Elegante'                           Click Element     //*[@id="product"]/div[2]/div[2]/div[2]/div/div/button
    Run Keyword If   '${OPCAO}' == 'Perfume Casual'                             Click Element     //*[@id="product"]/div[2]/div[2]/div[3]/div/div/button
    Run Keyword If   '${OPCAO}' == 'Perfume Intenso'                            Click Element     //*[@id="product"]/div[2]/div[2]/div[4]/div/div/button
    Run Keyword If   '${OPCAO}' == 'Perfume Suave'                              Click Element     //*[@id="product"]/div[2]/div[2]/div[5]/div/div/button
    aguarda página
    Unselect Frame

 Acessar no menu Protesto "${OPCAO}" 
    Run Keyword If   '${OPCAO}' == 'Títulos'                               Click Element     //*[@id="protesto"]/div/a[1]
    Run Keyword If   '${OPCAO}' == 'Custas'                                Click Element     //*[@id="protesto"]/div/a[2]
    Run Keyword If   '${OPCAO}' == 'Desistência de Protestos'              Click Element     //*[@id="protesto"]/div/a[3]
    Run Keyword If   '${OPCAO}' == 'Excluir Títulos'                       Click Element     //*[@id="protesto"]/div/a[4]
    Run Keyword If   '${OPCAO}' == 'Títulos Excluídos'                     Click Element     //*[@id="protesto"]/div/a[5]
    Run Keyword If   '${OPCAO}' == 'Tratamento de Títulos Rejeitados'      Click Element     //*[@id="protesto"]/div/a[6]
    aguarda página
    Unselect Frame
    
Acessar no menu Remessas "${OPCAO}"
    Run Keyword If   '${OPCAO}' == 'Gestão de Remessas'                    Click Element     //ul/li[1]/div/a

    aguarda página
    Unselect Frame
    
Acessar no menu Configurações "${OPCAO}" 
    Run Keyword If   '${OPCAO}' == 'Cartório'                               Click Element     //html/body/app-root/app-layout/app-navbar/nav/ul/li[2]/div/a[1]
    Run Keyword If   '${OPCAO}' == 'Faixa de CEP'                           Click Element     //html/body/app-root/app-layout/app-navbar/nav/ul/li[2]/div/a[2]
    Run Keyword If   '${OPCAO}' == 'Espécie de Titulos de Cobrança'         Click Element     //html/body/app-root/app-layout/app-navbar/nav/ul/li[2]/div/a[3]
    Run Keyword If   '${OPCAO}' == 'Intervalo Cep Bloqueado'                Click Element     //html/body/app-root/app-layout/app-navbar/nav/ul/li[2]/div/a[4]

    aguarda página
    Unselect Frame
    
Acessar no menu Auditoria e Log "${OPCAO}" 
    Run Keyword If   '${OPCAO}' == 'Trilha de Auditoria'                    Click Element     //html/body/app-root/app-layout/app-navbar/nav/ul/li[3]/div/a

    aguarda página
    Unselect Frame

Acessar no menu Arquivos "${OPCAO}" 
    Run Keyword If   '${OPCAO}' == 'Gestão de Arquivo'                     Click Element     //html/body/app-root/app-layout/app-navbar/nav/ul/li[4]/div/a

    aguarda página
    Unselect Frame
    

Acessar no menu Manutenção "${OPCAO}" 
    Run Keyword If   '${OPCAO}' == 'Incluir Título'                        Click Element      xpath=//*[@id="navbarSupportedContent"]/ul/li[5]/div/a[1]
    Run Keyword If   '${OPCAO}' == 'Incluir Arquivo'                       Click Element     //html/body/app-root/app-layout/app-navbar/nav/ul/li[6]/div/a[2]
    Run Keyword If   '${OPCAO}' == 'Movimentar Titulo Manualmente'         Click Element     //html/body/app-root/app-layout/app-navbar/nav/ul/li[6]/div/a[3]
    Run Keyword If   '${OPCAO}' == 'Parametrizar Sistema'                  Click Element     //html/body/app-root/app-layout/app-navbar/nav/ul/li[6]/div/a[4]

    aguarda página
    Unselect Frame