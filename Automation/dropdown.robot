*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${url}   https://testautomationpractice.blogspot.com/
${browser}  chrome



*** Test Cases ***
dropDown
        open browser    ${url}          ${browser}
        maximize browser window
        sleep    2

        select from list by index       country       7
        sleep    2
        select from list by label       country       Brazil
        sleep    2
        select from list by value       country       japan
        sleep    2


*** Keywords ***
