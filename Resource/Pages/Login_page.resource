*** Settings ***
Documentation       This file handles all operations in the login Page
Resource        ../Base/CommonFunctionality.resource

*** Variables ***
${USER_NAME_LOCATOR}        id=txtUsername

*** Keywords ***

Enter Username
      [Arguments]       ${Username}
      Input Text    ${USER_NAME_LOCATOR}    ${Username}