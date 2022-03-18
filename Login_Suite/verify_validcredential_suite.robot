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
        Set Screenshot Directory    ${EXECDIR}${/}Screenshot
        Close Browser
        #To give browser_name as input in cmd
        # robot -v BROWSER_NAME:chrome .\Login_Suite\verify_validcredential_suite.robot


