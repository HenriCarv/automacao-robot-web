*** Settings ***
Documentation    Ações, steps e elementos da funcionalidade de cadastro

Library    Browser

*** Keywords ***

Go To signup page
    [Arguments]    ${resistre}
  
    Click        ${resistre}
    Get Text    h1    equal    Faça seu cadastro

Fill signup form
    [Arguments]    ${boxName}    ${boxEmail}    ${boxCpf}    ${boxCep}    ${buttonCep}    ${adressNumber}     ${adressComplemnet}     ${dog_walker}    ${attachFile}
    Fill Text      ${boxName}                ${dog_walker}[Completedname]
    Fill Text      ${boxEmail}               ${dog_walker}[email]
    Fill Text      ${boxCpf}                 ${dog_walker}[cpf]
    Fill Text      ${boxCep}                 ${dog_walker}[cep]
    Click          ${buttonCep}    
    Fill Text      ${adressNumber}           ${dog_walker}[number]
    Fill Text      ${adressComplemnet}       ${dog_walker}[complement]
    Sleep    2
    Upload File By Selector    ${attachFile}    ${EXECDIR}/resources/fixtures/${dog_walker}[cnh]

Submit signup form
    [Arguments]    ${buttonSubmit}
    Click          ${buttonSubmit}

Check sucess submit
    [Arguments]    ${checkSucess}
    Get Text       ${checkSucess}    equal    Recebemos o seu cadastro e em breve retornaremos o contato.

Click here to register
    [Arguments]
    
    ${resistre}    Set Variable
    ...        xpath=//strong[text()="Quero ser Dog Walker"]

    RETURN    ${resistre}

Alert should be
    [Arguments]    ${alertError}    ${expectedText}
    Get Text       ${alertError}   equal    ${expectedText}

Box name
    [Arguments]
    
    ${boxName}    Set Variable
    ...        xpath=//input[@placeholder="Nome completo"]

    RETURN    ${boxName}

Box email
    [Arguments]
    
    ${BoxEmail}    Set Variable
    ...        xpath=//input[@name="email"]

    RETURN    ${BoxEmail}

Box CPF
    [Arguments]
    
    ${boxCpf}    Set Variable
    ...        xpath=//input[@name="cpf"]

    RETURN    ${boxCpf}

Box CEP
    [Arguments]
    
    ${boxCep}    Set Variable
    ...        xpath=//input[@name="cep"]

    RETURN    ${boxCep}

Box adressnumber
    [Arguments]
    
    ${adressNumber}    Set Variable
    ...        xpath=//input[@name="addressNumber"]

    RETURN    ${adressNumber}

Box adresscomplemnet
    [Arguments]
    
    ${adressComplemnet}    Set Variable
    ...        xpath=//input[@name="addressDetails"]

    RETURN    ${adressComplemnet}

Search CEP
    [Arguments]
    
    ${buttonCep}    Set Variable
    ...        xpath=//input[@value="Buscar CEP"]

    RETURN    ${buttonCep}

Attach file
    [Arguments]
    
    ${attachFile}    Set Variable
    ...        xpath=//input[@type="file"]

    RETURN    ${attachFile}

Subimit registre
    [Arguments]
    
    ${buttonSubmit}    Set Variable
    ...        xpath=//button[@type="submit"]

    RETURN    ${buttonSubmit}
    
Title sucess
    [Arguments]
    
    ${titleSucess}    Set Variable
    ...        xpath=//div[@class="swal2-html-container"]

    RETURN    ${titleSucess}

Alert error
    [Arguments]
    
    ${alertError}    Set Variable
    ...        xpath=//span[@class="alert-error"]

    RETURN    ${alertError}