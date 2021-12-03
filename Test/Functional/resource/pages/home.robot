*** Settings ***
Library                         SeleniumLibrary

*** Variables ***
${HOME_TITLE}                   SKY: A gente se diverte junto! | SKY - Sky
${HOME_CLOSE_POPUP}             xpath:(//button)[18]
${HOME_SCHEDULE_TEXT}           Programação
${HOME_SCHEDULE_LINK}           (//a)[@href="/programacao"]

*** Keywords ***
Given user is on the home Page
    Title Should Be                     ${HOME_TITLE}

When user close the popup
    Click Button                        ${HOME_CLOSE_POPUP}
    Sleep                               8
    Page Should Contain                 ${HOME_SCHEDULE_TEXT}
    Wait Until Element Is Enabled       ${HOME_SCHEDULE_LINK}

And user goes to schedule
    Click Link                          ${HOME_SCHEDULE_LINK}
    