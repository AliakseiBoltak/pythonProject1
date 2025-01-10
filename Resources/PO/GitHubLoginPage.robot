*** Settings ***
Documentation    GitHub login page pbject
Library          SeleniumLibrary
Resource        ../Resources.robot

*** Keywords ***
Login
    wait until page contains element    id=login_field
    input text                          login_field     ${email}
    input password                      password        ${password}
    click button                        commit