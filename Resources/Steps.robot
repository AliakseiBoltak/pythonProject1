*** Settings ***
Resource        ../Resources/PO/UiTestPlaygroundPage.robot
Resource        ../Resources/PO/GitHubLoginPage.robot
Resource        ../Resources/PO/GitHubPage.robot
Resource        ../Resources/Common.robot
Resource        ../Resources/DataManager.robot
Resource        ../Resources/Resources.robot
Resource        ../Resources/FileUtils.robot
Resource        ../Resources/API/API.robot
Library          ../Libraries/MyCustomLibrary.py
*** Variables ***

*** Keywords ***
User tries to fork this site on github
    Open Start URL
    Click on dynamic id link
    Click fork this site on github link

User login to github
    Login

Verify that user is logged into github
    Is user loggen in

Test work with files
    Create Some Base Dir
    Create first directory
    Create first file
    #Delete File

Test github API
    Check git hub username

Do Custom Thing
    Do Something Special

Read data from txt file
    Get data    ${TXT_DATA_PATH}