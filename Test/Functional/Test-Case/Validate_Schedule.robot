*** Settings ***
Resource                                ../resource/resource.robot
Test Setup                              Open Session
Test Teardown                           Close Session

***Test Cases ***
Text and time in the schedule need to be the same in the modal
    Click Button                        xpath:(//button)[18]
    Sleep                               8
    Page Should Contain                 Programação
    Wait Until Element Is Enabled       (//a)[@href="/programacao"]
    Click Link                          (//a)[@href="/programacao"]
    Wait Until Element Is Enabled       (//div)[contains(@class, 'schedule-live')][1]/div/h2
    ${live-now}                         Get Text                        (//div)[contains(@class, 'schedule-live')][1]/div/h2
    Click Element                       (//div)[contains(@class, 'schedule-live')][1]/div/h2
    Wait Until Element Is Visible       (//div)[contains(@class, 'sky-modal-program-title')]/h2
    ${program-name}                     Get Text                        (//div)[contains(@class, 'sky-modal-program-title')]/h2
    Should Be Equal                     ${live-now}                     ${program-name}