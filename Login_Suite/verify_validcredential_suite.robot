*** Settings ***
Documentation       This suite will handle all the test cases related to valid
...     credential test. Test case -TC_OH_2

Resource        ../Resource/Base/CommonFunctionality.resource

Test Teardown   Close Browser

*** Test Cases ***
Verify Valid Credential Test
        Launch Browser
        Input Text    id=txtUsername    Admin
        Input Password    id=txtPassword    admin123
        Click Button    id=btnLogin
        Page Should Contain    My Info
        #Click Element    id=welcome
        #Click Element    Link=Logout
        Close Browser

