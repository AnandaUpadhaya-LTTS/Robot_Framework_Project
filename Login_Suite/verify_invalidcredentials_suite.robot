*** Settings ***
Documentation       This suite will handle all the test cases related to invalid
...     credential test. Test case -TC_OH_3

Resource        ../Resource/Base/CommonFunctionality.resource

Test Teardown   Close Browser

*** Test Cases ***
Verify InValid Credential Test
        Launch Browser
        Input Text    id=txtUsername    Adminabc
        Input Password    id=txtPassword    admin123456
        Click Button    id=btnLogin
        #Page Should Contain    My Info
        #Click Element    id=welcome
        #Click Element    Link=Logout
        Page Should Contain Element    id=spanMessage
        Close Browser
