*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          http://www.sky.com.br/

*** Keywords ***
Open Session
    Open Browser                ${url}       ${browser}
    Sleep                       2

Close Session
    Sleep                       2
    Capture Page Screenshot
    Close Browser
