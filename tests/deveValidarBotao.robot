*** Settings ***
Resource    ../pages/homePage.robot

*** Test Cases ***
Validar que o Curso de Testes está disponível
    main.Abrir o navegador
    Sleep    5s
    main.Fechar o navegador

