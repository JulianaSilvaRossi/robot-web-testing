*** Settings ***
Library             SeleniumLibrary
Documentation       https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

*** Variables ***
${url}      http://the-internet.herokuapp.com/
${browser}  chrome

*** Keywords ***
Abrir o navegador
    Open Browser                ${url}     
    Set Window Size             1080    720
    Page Should Contain         Welcome to the-internet

Fechar o navegador
    Close Browser
