*** Settings ***
Library                                 SeleniumLibrary

*** Variables ***
${PROGRAMACAO_TITLE}                            Na TV: Grade de Programação | SKY
${PROGRAMACAO_SCHEDULE_LIVE_NOW_TITLE}          xpath:(//div)[contains(@class, 'schedule-live')][1]/div/h2
${PROGRAMACAO_SCHEDULE_LIVE_NOW_TIME}           xpath:(//div)[contains(@class, 'schedule-live')][1]/div/div[2]/div/p
${PROGRAMACAO_MODAL_TITLE}                      xpath:(//div)[contains(@class, 'sky-modal-program-title')]/h2
${PROGRAMACAO_MODAL_TIME}                       xpath:(//div)[contains(@class, 'sky-modal-program-date-time')]/span

*** Keywords ***
And user sees the schedule
    Title Should Be                     ${PROGRAMACAO_TITLE}
    Wait Until Element Is Enabled       ${PROGRAMACAO_SCHEDULE_LIVE_NOW_TITLE}
    Wait Until Element Is Visible       ${PROGRAMACAO_SCHEDULE_LIVE_NOW_TITLE}
    ${PROGRAMACAO_LIVE_NOW_TEXT}        Get Text                                    ${PROGRAMACAO_SCHEDULE_LIVE_NOW_TITLE}
    Set Global Variable                 ${PROGRAMACAO_LIVE_NOW_TEXT}
    ${PROGRAMACAO_LIVE_NOW_HOUR}        Get Text                                    ${PROGRAMACAO_SCHEDULE_LIVE_NOW_TIME}
    Set Global Variable                 ${PROGRAMACAO_LIVE_NOW_HOUR}
    
And user clicks on the schedule live
    Click Element                       ${PROGRAMACAO_SCHEDULE_LIVE_NOW_TITLE}
    Wait Until Element Is Enabled       ${PROGRAMACAO_MODAL_TITLE}
    Wait Until Element Is Visible       ${PROGRAMACAO_MODAL_TITLE}
    ${PROGRAMAÇÃO_MODAL_TEXT}           Get Text                                    ${PROGRAMACAO_MODAL_TITLE}
    Set Global Variable                 ${PROGRAMAÇÃO_MODAL_TEXT}
    ${PROGRAMACAO_MODAL_HOUR}           Get Text                                    ${PROGRAMACAO_MODAL_TIME}
    Set Global Variable                 ${PROGRAMACAO_MODAL_HOUR}
    
Then user validate that the title an time in the schedule is the same in the modal
    Should Be Equal                     ${PROGRAMACAO_LIVE_NOW_TEXT}                ${PROGRAMAÇÃO_MODAL_TEXT}
    Should Be Equal                     ${PROGRAMACAO_LIVE_NOW_HOUR}                ${PROGRAMACAO_MODAL_HOUR}