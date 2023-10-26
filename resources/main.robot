*** Settings ***
Documentation       https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html

Library    SeleniumLibrary    timeout=0:00:15    implicit_wait=0:00:15
Library    OperatingSystem
Library    DateTime
Library    String
Library    AxeLibrary
Library    ../resources/config/chromesync.py
Library    ../resources/config/edgesync.py
Library    ../resources/config/firefoxsync.py

Resource    ../resources/pages/homePage.robot

*** Keywords ***
Open browser and access the website
    [Arguments]    ${url}    ${browser}

    IF    "${browser}" == "Edge"
         ${driver_edge}   edgesync.Get Edgedriver Path
        Open Browser   url=${url}  browser=${browser}    executable_path=${driver_edge}  
    ELSE IF    "${browser}" == "Google Chrome"
        ${driver_chrome}   chromesync.Get Chromedriver Path
        Open Browser   url=${url}  browser=${browser}    options=add_argument('--disable-dev-shm-usage'); add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors")  executable_path=${driver_chrome}    
    ELSE IF    "${browser}" == "Firefox"
        ${driver_firefox}   firefoxsync.Get Firefoxdriver Path
        Open Browser   url=${url}  browser=${browser}      executable_path=${driver_firefox}
    END
    Set Window Size             1080    720





