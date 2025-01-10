*** Settings ***
Documentation    ui-test-automation-playground page object
Library          SeleniumLibrary

*** Variables ***
${UI_TEST_AUTOMATION_PLAYGROUND_URL} =    https://github.com/inflectra/ui-test-automation-playground
${SIGN_IN_LIK} =    //div[@class='position-relative HeaderMenu-link-wrap d-lg-inline-block']/a

*** Keywords ***
Click on dynamic id link
    click link                 /dynamicid

Click fork this site on github link
    click link                  ${UI_TEST_AUTOMATION_PLAYGROUND_URL}
    wait until element is visible    ${SIGN_IN_LIK}
    click link                       ${SIGN_IN_LIK}