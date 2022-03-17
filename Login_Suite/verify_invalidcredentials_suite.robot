*** Settings ***
Documentation       This suite will handle all the test cases related to invalid
...     credential test. Test case -TC_OH_3

Resource        ../Resource/Base/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser

Test Template       Verify InValid Credential Test

*** Test Cases ***

TC1     John        john123     Invalid credentials
TC2     Peter       peter123    Invalid credentials

*** Keywords ***
Verify InValid Credential Test
        [Arguments]     ${username}     ${password}     ${expected_error}
        Input Text    id=txtUsername    ${username}
        Input Password    id=txtPassword    ${password}
        Click Button    id=btnLogin
        Element Text Should Be    id=spanMessage    ${expected_error}
        Close Browser
