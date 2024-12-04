*** Settings ***
Library    SeleniumLibrary



#*** Variables ***
#${url}   https://testautomationpractice.blogspot.com/
#${browser}  chrome


*** Test Cases ***
speedTest
        ${speed}        get selenium speed
        log to console    ${speed}
        open browser    https://testautomationpractice.blogspot.com/    chrome
        maximize browser window
        set selenium speed    2 seconds

#        sleep    2
        input text    id=name   Shiva
#        sleep    2
        input text    id=email    shivaya
#        sleep    2

        scroll element into view    xpath://input[@id='male']

        #Selecting radio button
       select radio button    gender    female
       select radio button    gender    male


        ${speed}        get selenium speed
        log to console    ${speed}