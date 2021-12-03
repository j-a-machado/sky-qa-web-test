*** Settings ***
Resource                                ../resource/resource.robot
Resource                                ../resource/pages/home.robot
Resource                                ../resource/pages/programacao.robot
Test Setup                              Open Session
Test Teardown                           Close Session

***Test Cases ***
Text and time in the schedule need to be the same in the modal
    Given user is on the home Page
    When user close the popup
    And user goes to schedule
    And user sees the schedule
    And user clicks on the schedule live
    Then user validate that the title an time in the schedule is the same in the modal