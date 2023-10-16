*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

Library     chromesync.py
Library     edgesync.py
Library     firefoxsync.py

Documentation       https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
...                webdrivermanager edgechromium --linkpath C:\Users\tordi\AppData\Local\Programs\Python\Python311\Scripts

*** Variables ***
${url}      http://the-internet.herokuapp.com/
${browser}  chrome

*** Keywords ***
Abrir o navegador e acessar o site
    [Arguments]    ${url}    ${navegador}
    IF    "${navegador}" == "Edge"
        ${driver_path}   edgesync.Get Edgedriver Path
        Open Browser   url=${url}  browser=${navegador}      executable_path=${driver_path}  
    ELSE IF    "${navegador}" == "Google Chrome"
        ${driver_path}   chromesync.Get Chromedriver Path
        Open Browser   url=${url}  browser=${navegador}      executable_path=${driver_path}
    ELSE IF    "${navegador}" == "Firefox"
        ${driver_path}   firefoxsync.Get Firefoxdriver Path
        Open Browser   url=${url}  browser=${navegador}      executable_path=${driver_path}

    END
    
    Set Window Size             1080    720

Fechar o navegador
    Close Browser




