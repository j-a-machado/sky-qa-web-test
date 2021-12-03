*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${browser}      firefox
${url}          http://www.sky.com.br/

*** Keywords ***
Open Session
    Open Browser                ${url}       ${browser}
    Sleep                       2

Close Session
    Sleep                       2
    Capture Page Screenshot
    Close Browser

***Test Cases ***
Text and time in the schedule need to be the same in the modal
    Open Session
    Click Button                        xpath:(//button)[18]
    Sleep                               8
    Page Should Contain                 Programação
    Wait Until Element Is Enabled       (//a)[@href="/programacao"]
    Click Link                          (//a)[@href="/programacao"]
    Wait Until Element Is Enabled       (//div)[contains(@class, 'schedule-live')][1]/div/h2
    ${live-now}                         Get Text                        (//div)[contains(@class, 'schedule-live')][1]/div/h2
    Capture Page Screenshot
    Click Element                       (//div)[contains(@class, 'schedule-live')][1]/div/h2
    Wait Until Element Is Visible       (//div)[contains(@class, 'sky-modal-program-title')]/h2
    ${program-name}                     Get Text                        (//div)[contains(@class, 'sky-modal-program-title')]/h2
    Capture Page Screenshot
    Should Be Equal                     ${live-now}                     ${program-name}