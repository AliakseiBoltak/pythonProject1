*** Settings ***
Documentation    This is some basic info about the whole Suite
Resource        ../../Resources/Steps.robot

Suite Setup     Begin Suite
Test Setup      Begin Test
Test Teardown   End Test
Suite Teardown  End Suite

*** Variables ***
${USER_NAME} =  Vasilii

*** Test Cases ***
Should be able to login to GitHub while trying to fork the site
    [Documentation]         This is some basic info about the Test
    [Tags]                  Smoke

    #Verify business logic
    Say Hello to User    ${USER_NAME}
    User tries to fork this site on github
    User login to github
    Verify that user is logged into github