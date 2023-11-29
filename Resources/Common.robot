*** Settings ***
Documentation    Common methods
Library          SeleniumLibrary
Library          Dialogs
Resource         Resources.robot

*** Keywords ***
Begin Suite
    log                         Starting suite!

End Suite
    log                         Finishing suite!

Begin Test
    set selenium timeout        10s
    log                         Starting test case!
    open browser                about:blank       ${BROWSER}
    Maximize Browser Window

Say Hello to User
    [Arguments]    ${USER_NAME}
    run keyword if    '${USER_NAME}'=='Alex'    log   'Hello my old friend ${USER_NAME}'
    run keyword if    '${USER_NAME}'!='Alex'    log   'Hello user ${USER_NAME}'

Open Start URL
    go to                      ${START_URL}

End Test
    log                         Finishing the test case!
    close browser

Pause Test
    pause execution

Print List
        [Arguments]    @{ITEMS}
        FOR    ${ELEMENT}    IN    @{ITEMS}
        log     ${ELEMENT}
        END