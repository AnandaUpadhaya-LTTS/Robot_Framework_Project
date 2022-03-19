*** Settings ***
Documentation       This suite will handle all the test cases related to valid
...     credential test. Test case -TC_OH_2

Resource        ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/Login_page.resource

Test Teardown   Close Browser

*** Test Cases ***
Verify Valid Credential Test
        Launch Browser
        Enter Username      Admin
        Enter Password    admin123
        Click on Login    id=btnLogin
        Page Should Contain    My Info
        Set Screenshot Directory    ${EXECDIR}${/}Screenshot
        Close Browser
        #To give browser_name as input in cmd
        # robot -v BROWSER_NAME:chrome .\Login_Suite\verify_validcredential_suite.robot


