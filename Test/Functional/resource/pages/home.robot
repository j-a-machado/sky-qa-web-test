*** Settings ***
Library                         SeleniumLibrary

*** Variables ***
${HOME_TITLE}                   SKY: A gente se diverte junto! | SKY - Sky
${HOME_BUTTON_CLOSE_POPUP}             xpath:(//button)[18]
${HOME_TEXT_SCHEDULE}           Programação
${HOME_LINK_SCHEDULE}           (//a)[@href="/programacao"]

*** Keywords ***
Given user is on the home Page
    Title Should Be                     ${HOME_TITLE}

When user close the popup
    Click Button                        ${HOME_BUTTON_CLOSE_POPUP}
    Sleep                               8
    Page Should Contain                 ${HOME_TEXT_SCHEDULE}
    Wait Until Element Is Enabled       ${HOME_LINK_SCHEDULE}

And user goes to schedule
    Click Link                          ${HOME_LINK_SCHEDULE}
    