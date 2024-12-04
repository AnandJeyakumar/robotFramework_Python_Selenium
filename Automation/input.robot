*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}   https://www.google.com/
${browser}  chrome

*** Test Cases ***
inputBox

    OPEN BROWSER    ${url}    ${browser}
    maximize browser window
    sleep    2
    input text    xpath:(//textarea)[1]     amazon
    click button    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    clear element text    xpath://textarea[@id='APjFqb']
    sleep    2
    input text    xpath://textarea[@id='APjFqb']    Om Namashivaya Thiruvannamalai
    click button    //button[@type="submit"]
    sleep    2

*** Keywords ***
