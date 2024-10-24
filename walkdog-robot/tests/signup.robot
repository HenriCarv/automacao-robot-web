*** Settings ***
Documentation    Suite de testes de cadastro de dog walker

Resource    ../resources/base.resource

*** Test Cases ***
Deve poder cadastrar um novo dog walker

    ${dog_walker}               Create Dictionary    
    ...    Completedname=Jorge Matias    
    ...    email=jorge@hotmail.com
    ...    cpf=00000014141    
    ...    cep=04534011
    ...    number=1000
    ...    complement=ap 28
    ...    cnh=toretto.jpg

    ${resistre}             Click here to register
    ${boxName}              Box name
    ${boxEmail}             Box email
    ${boxCpf}               Box CPF
    ${boxCep}               Box CEP
    ${adressNumber}         Box adressnumber
    ${adressComplemnet}     Box adresscomplemnet
    ${buttonCep}            Search CEP
    ${attachFile}           Attach file
    ${buttonSubmit}         Subimit registre
    ${titleSucess}          Title sucess

    Start session
    Go To signup page      ${resistre} 
    Fill signup form       ${boxName}            ${boxEmail}    ${boxCpf}    ${boxCep}    ${buttonCep}    ${adressNumber}     ${adressComplemnet}    ${dog_walker}    ${attachFile}
    Submit signup form     ${buttonSubmit}
    Check sucess submit    ${titleSucess}
    Finish session

Não deve cadastrar se o cpf for incorreto
    [Tags]    cpf_inv
    ${dog_walker}               Create Dictionary    
    ...    Completedname=Jorge Matias    
    ...    email=jorge@hotmail.com
    ...    cpf=00000014141aa   
    ...    cep=04534011
    ...    number=1000
    ...    complement=ap 28
    ...    cnh=toretto.jpg

    ${resistre}             Click here to register
    ${boxName}              Box name
    ${boxEmail}             Box email
    ${boxCpf}               Box CPF
    ${boxCep}               Box CEP
    ${adressNumber}         Box adressnumber
    ${adressComplemnet}     Box adresscomplemnet
    ${buttonCep}            Search CEP
    ${attachFile}           Attach file
    ${buttonSubmit}         Subimit registre
    ${titleSucess}          Title sucess
    ${alertError}           Alert error

    Start session
    Go To signup page     ${resistre} 
    Fill signup form   ${boxName}            ${boxEmail}    ${boxCpf}    ${boxCep}    ${buttonCep}    ${adressNumber}     ${adressComplemnet}    ${dog_walker}    ${attachFile}
    Submit signup form     ${buttonSubmit}
    Alert should be    ${alertError}    CPF inválido
    Finish session