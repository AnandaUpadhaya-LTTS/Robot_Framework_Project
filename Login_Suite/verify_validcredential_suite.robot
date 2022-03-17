*** Settings ***
Documentation       This suite will handle all the test cases related to valid
...     credential test. Test case -TC_OH_2

Library     SeleniumLibrary

*** Test Cases ***
Verify Valid Credential Test
        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        set selenium implicit wait      30s
        Go To    url=https://opensource-demo.orangehrmlive.com/
        Input Text    id=txtUsername    Admin
        Input Password    id=txtPassword    admin123
        Click Button    id=btnLogin
        Page Should Contain    My Info
        #Click Element    id=welcome
        #Click Element    Link=Logout
        Close Browser

