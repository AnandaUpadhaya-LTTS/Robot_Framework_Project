*** Settings ***
Documentation       This file handles all operations in the login Page
Resource        ../Base/CommonFunctionality.resource

*** Variables ***
${USER_NAME_LOCATOR}        id=txtUsername
${PASSWORD_LOCATOR}         id=txtPassword

*** Keywords ***
Enter Username
      [Arguments]       ${Username}
      Input Text    ${USER_NAME_LOCATOR}    ${Username}

Enter Password
    [Arguments]     ${password}
    Input Password    ${PASSWORD_LOCATOR}    ${password}

Click on Login
    [Arguments]     ${login_button}
    Click Button    ${login_button}
