*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${url2}     https://google.com
${browserName}      chrome

*** Test Cases ***
practiceForm
        ${Returned Value}   launchBrowser       ${url2}      ${browserName}
        log to console    ${Returned Value}
        log    ${Returned Value}
#        enteringNameAndMobileNumber

*** Keywords ***
launchBrowser
        [Arguments]    ${webURL}        ${webBrowser}
        open browser    ${webURL}         ${webBrowser}
        maximize browser window
        sleep    3
        ${title}    get title
        [RETURN]    ${title}

enteringNameAndMobileNumber
        input text    xpath://input[@id='name']     Shiva
        input text    xpath://input[@id='phone']    1111111
        sleep    3
