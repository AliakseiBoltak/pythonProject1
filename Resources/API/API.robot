*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Check git hub username
    Create Session    my_github_session     https://api.github.com

    ${response} =   get on session    my_github_session    users/robotframeworktutorial

    should be equal as strings    ${response.status_code}   200

    ${json} =    Set Variable   ${response.json()}
    should be equal as strings    ${json['login']}      robotframeworktutorial
    Log    ${json}