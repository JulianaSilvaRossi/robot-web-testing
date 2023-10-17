*** Settings ***
Resource        ../main.robot

*** Variables ***
${txtItem}    xpath://textarea[@title='Pesquisar']

*** Keywords ***
The User Enters The Item
    [Arguments]    ${item}
    Input Text     ${txtItem}    ${item}

The confirm the search
    Press KeyS    none    ENTER
The Result Should Be
    [Arguments]    ${expected}
    Wait Until Page Contains    ${expected}


