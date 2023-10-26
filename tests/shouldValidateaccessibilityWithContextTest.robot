*** Settings ***
Resource    ../resources/main.robot

Suite Setup        main.Open browser and access the website    https://www.casasbahia.com.br/guarda-roupa-casal-bartira-ville-com-6-portas-e-2-gavetas/p/55055049?utm_source=b2b_livelo&utm_medium=livelo&utm_campaign=livelo_acumuloutm_campaign=livelo_acumulo    Google Chrome
Suite Teardown     Close Browser

*** Test Cases ***
Google Accessibility Test with context
   # execute accessibility tests
   Click Element    xpath://p[text()='Características']/..
   Wait Until Page Contains    Características Gerais
   &{results}=    Run Accessibility Tests    cb.json    context=#radix-1
   Log   Violations Count: ${results.violations}

   # log violation result to log.html
   ${tabela_result}=    Log Readable Accessibility Result    violations
   Should Be True    ${results.violation} < 1