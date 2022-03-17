*** Settings ***
Documentation       This file handles browser configuration, reuseable scripts.

Library     SeleniumLibrary

*** Variables ***
${BROWSER_NAME}     chrome
${URL}      https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Launch Browser
        Open Browser    browser=${BROWSER_NAME}   executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        set selenium implicit wait      30s
        Go To    url=${URL}

