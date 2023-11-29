*** Settings ***
Documentation    GitHub login page pbject
Library          SeleniumLibrary
Resource        ../Resources.robot

*** Keywords ***
Login
    wait until page contains element    id=login_field
    input text                          login_field     ${CREDS.email}
    input password                      password        ${CREDS.password}
    click button                        commit