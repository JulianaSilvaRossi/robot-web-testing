*** Settings ***
Resource    ../resources/main.robot

Suite Setup        main.Open browser and access the website    Https://google.com.br    Edge
Suite Teardown     Close Browser

*** Test Cases ***
Validate search results on Google
    Given The User Enters The Item    Iphone
    When The confirm the search
    Then The Result Should Be    Aproximadamente 