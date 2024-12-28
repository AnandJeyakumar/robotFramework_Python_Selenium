*** Settings ***
Library  SeleniumLibrary
Suite Setup    Open Browser     https://testautomationpractice.blogspot.com/
Suite Teardown    Close Browser

*** Variables ***
${browser}  headlesschrome

*** Test Cases ***
Input Test Case
    [Documentation]    Validate email Input
    Wait Until Page Contains    Automation Testing Practice
    Input Text    id=name      All is well
    Input Text    id=email     test@example.com
    Sleep         5s
    ${title}      Set Variable    Automation Testing Practice
    Title Should Be    ${title}
    Clear Element Text    id=email
    Sleep         3s


