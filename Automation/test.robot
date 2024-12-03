*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}   https://www.google.com/
${browser}  chrome


*** Test Cases ***
Google
    insideGoogle

*** Keywords ***
insideGoogle
    OPEN BROWSER    ${url}   ${browser}
    maximize browser window
    sleep    3