*** Settings ***
Documentation    GitHub page object
Library          SeleniumLibrary

*** Variables ***
${UI_TEST_AUTOMATION_PLAYGROUND_LINK} =    xpath=//a[text()='ui-test-automation-playground']

*** Keywords ***
Is user loggen in
    run keyword and continue on failure    element should be visible   code-tab
    run keyword and continue on failure    element should be visible   ${UI_TEST_AUTOMATION_PLAYGROUND_LINK}
    page should contain         branches