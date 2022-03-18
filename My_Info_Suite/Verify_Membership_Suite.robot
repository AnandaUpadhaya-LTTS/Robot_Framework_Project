*** Settings ***
Documentation       This documentation is related to Verify Membership
Resource        ../Resource/Base/CommonFunctionality.resource
Library     DataDriver      file=../Test_Data/Framework_Orange.xlsx     sheet=AddMembership_new
Test Setup      Launch Browser
Test Teardown   Close Browser
Test Template       Verify Add Membership

*** Test Cases ***
Add Membership

*** Keywords ***
Verify Add Membership
        [Arguments]     ${username}     ${password}     ${membership}      ${paid_by}     ${amount}
        Input Text    id=txtUsername    ${username}
        Input Password    id=txtPassword    ${password}
        Click Button    id=btnLogin
        Click Element    link=My Info
        Click Element    Link=Memberships
        Click Element    xpath=//*[@id='btnAddMembershipDetail']
        Select From List By Label    id=membership_membership       ${membership}
        Select From List By Value    id=membership_subscriptionPaidBy       ${paid_by}
        Input Text    id=membership_subscriptionAmount    ${amount}
        Select From List By Value    id=membership_currency       INR
        Input Text    id=membership_subscriptionCommenceDate    2022-03-16
        Input Text    id=membership_subscriptionRenewalDate    2022-03-18
        Click Button    id=btnSaveMembership
