*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
speedTest

        open browser    https://testautomationpractice.blogspot.com/    chrome
        maximize browser window

        sleep   3
        click button    confirmBtn
        sleep   3
#        handle alert    accept
#        handle alert     dismiss
#        ${text}     get text    id=demo
#        should be equal    ${text}      You pressed Cancel!
#        log to console    ${text}

#        alert should be present    Press a button!
#        sleep   3
#        ${text}     get text    id=demo
#        should be equal    ${text}      You pressed OK!
#        log to console    ${text}
#        sleep   3

        alert should not be present    Press a button!
        sleep   3


