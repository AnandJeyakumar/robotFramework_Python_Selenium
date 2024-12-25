*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}       https://testautomationpractice.blogspot.com/
${browser}   chrome

*** Test Cases ***
Input Test Case
    Open Browser To Test Page
    Input Text    id=name      All is well
    Input Text    id=email     test@example.com
    Sleep         5s
    ${title}      Set Variable    Automation Testing Practice
    Title Should Be    ${title}
    clear element text    id=email
    Sleep         3s

    [Teardown]    Close Browser

*** Keywords ***
Open Browser To Test Page
    Open Browser    ${url}    ${browser}    options=--headless,--no-sandbox,--disable-dev-shm-usage,--disable-gpu
    Wait Until Page Contains    Automation Testing Practice
    Maximize Browser Window