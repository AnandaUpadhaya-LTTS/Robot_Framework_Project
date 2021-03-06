*** Settings ***
Documentation       This suite will handle all the test cases related to invalid
...     credential test. Test case -TC_OH_3

Resource        ../Resource/Base/CommonFunctionality.resource
Resource        ../Resource/Pages/Login_page.resource
Resource    ../Resource/Pages/Login_page.resource
Test Setup      Launch Browser
Test Teardown   Close Browser

Test Template       Verify InValid Credential Test

*** Test Cases ***

TC1     John        john123     Invalid credentials
TC2     Peter       peter123    Invalid credentials
TC3     ${EMPTY}    tina123     Username cannot be empty
TC4     sunny       ${EMPTY}    Password cannot be empty

*** Keywords ***
Verify InValid Credential Test
        [Arguments]     ${username}     ${password}     ${expected_error}
        Enter Username      ${username}
        Enter Password    ${password}
        Click on Login      id=btnLogin
        Element Text Should Be    id=spanMessage    ${expected_error}
        Close Browser
