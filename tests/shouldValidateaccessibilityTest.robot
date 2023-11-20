*** Settings ***
Resource    ../resources/main.robot

Suite Setup        main.Open browser and access the website    Https://google.com.br    Google Chrome
Suite Teardown     Close Browser

*** Test Cases ***
Google Accessibility Test
    [Tags]    smoke-test
   # execute accessibility tests
   &{results}=    Run Accessibility Tests    google.json
   Log   Violations Count: ${results.violations}

   # log violation result to log.html
   ${tabela_result}=    Log Readable Accessibility Result    violations
   Should Be True    ${results.violation} < 1