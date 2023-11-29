*** Settings ***
Documentation    Use this layer to get data from external file
Library             ../Libraries/Txt.py

*** Keywords ***
Get data
    [Arguments]    ${FilePath}
    ${Data} =    read txt file    ${FilePath}
    log          ${Data}
    [Return]     ${Data}