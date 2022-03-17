*** Settings ***
Documentation       This suite will handle all the test cases related to invalid
...     credential test. Test case -TC_OH_3

Resource        ../Resource/Base/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser

*** Test Cases ***
Verify InValid Credential Test

        Input Text    id=txtUsername    Adminabc
        Input Password    id=txtPassword    admin123456
        Click Button    id=btnLogin
        Page Should Contain Element    id=spanMessage
        Element Text Should Be    id=spanMessage    Invalid credentials
        Close Browser
