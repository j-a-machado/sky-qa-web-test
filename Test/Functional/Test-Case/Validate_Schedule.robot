*** Settings ***
Resource                                ../resource/resource.robot
Resource                                ../resource/pages/home.robot
Test Setup                              Open Session
Test Teardown                           Close Session

***Test Cases ***
Text and time in the schedule need to be the same in the modal
    Given user is on the home Page
    When user close the popup
    And user goes to schedule
    Wait Until Element Is Enabled       (//div)[contains(@class, 'schedule-live')][1]/div/h2
    ${live-now}                         Get Text                        (//div)[contains(@class, 'schedule-live')][1]/div/h2
    Click Element                       (//div)[contains(@class, 'schedule-live')][1]/div/h2
    Wait Until Element Is Visible       (//div)[contains(@class, 'sky-modal-program-title')]/h2
    ${program-name}                     Get Text                        (//div)[contains(@class, 'sky-modal-program-title')]/h2
    Should Be Equal                     ${live-now}                     ${program-name}