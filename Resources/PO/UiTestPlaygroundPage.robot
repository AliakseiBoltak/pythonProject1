*** Settings ***
Documentation    ui-test-automation-playground page object
Library          SeleniumLibrary

*** Variables ***
${UI_TEST_AUTOMATION_PLAYGROUND_URL} =    https://github.com/inflectra/ui-test-automation-playground

*** Keywords ***
Click on dynamic id link
    click link                 /dynamicid

Click fork this site on github link
    click link                  ${UI_TEST_AUTOMATION_PLAYGROUND_URL}
    click link                 Sign in