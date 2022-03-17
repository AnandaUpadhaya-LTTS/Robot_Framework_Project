*** Settings ***
Documentation       This documentation is related to emergency contact
Resource        ../Resource/Base/CommonFunctionality.resource
Test Setup      Launch Browser
Test Teardown   Close Browser

Test Template       Verify Add Emergency Contact

*** Test Cases ***

TC1     Admin        admin123       Ananda      Brother     78988


*** Keywords ***
Verify Add Emergency Contact
        [Arguments]     ${username}     ${password}     ${emergency_cont_name}      ${relationship}     ${Home_phone}
        Input Text    id=txtUsername    ${username}
        Input Password    id=txtPassword    ${password}
        Click Button    id=btnLogin
        Click Element    link=My Info
        Click Element    Link=Emergency Contacts
        Click Element    xpath=//*[@id="btnAddContact"]
        Input Text      xpath=//*[@id="emgcontacts_name"]    ${emergency_cont_name}
        Input Text    id=emgcontacts_relationship    ${relationship}
        Input Text    id=emgcontacts_homePhone    ${Home_phone}
        Click Button    id=btnSaveEContact
        Table Should Contain    id=emgcontact_list    ${emergency_cont_name}