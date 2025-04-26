*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Screenshot
Library    DateTime
Library    BuiltIn
Library    Collections

# Resource    excel.robot
Resource    ../Pages/LoginPage.robot
# Resource    pega_massa_csv.robot

Resource                ../Resources/json.robot
Library                 JSONLibrary

*** Variables ***
${JSON_SRC}      TestData/massa_Perfume.json 
${SEQUENCIAL}    0

*** Keywords ***
Pegar valor do Json
    [Arguments]    ${Caso}    ${variavel}
   
    ${JsonObject}=    Load Json From File     ${JSON_SRC}   encoding=UTF-8
    ${Caso}=     Convert To Integer    ${Caso}
    ${value}=    Get Value From Json    ${JsonObject}    $[${Caso-1}].${variavel}
    ${value}=    Convert To String     ${value}  
    ${value}=    Replace String        ${value}    [    ${EMPTY}
    ${value}=    Replace String        ${value}    ]    ${EMPTY}
    ${value}=    Replace String        ${value}    "    ${EMPTY}
    ${value}=    Replace String        ${value}    '    ${EMPTY}
    [Return]   ${value} 
