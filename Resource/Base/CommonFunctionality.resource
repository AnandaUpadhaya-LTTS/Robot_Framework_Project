*** Settings ***
Documentation       This file handles browser configuration, reuseable scripts.

Library     SeleniumLibrary

*** Keywords ***
Launch Browser
        Open Browser    browser=chrome      executable_path=${EXECDIR}${/}Driver${/}chromedriver.exe
        Maximize Browser Window
        set selenium implicit wait      30s
        Go To    url=https://opensource-demo.orangehrmlive.com/

