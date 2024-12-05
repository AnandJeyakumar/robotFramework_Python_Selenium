*** Settings ***
Library    SeleniumLibrary



#*** Variables ***
#${url}   https://testautomationpractice.blogspot.com/
#${browser}  chrome


*** Test Cases ***
speedTest

        open browser    https://testautomationpractice.blogspot.com/    chrome
        maximize browser window

        ${wait}         get selenium implicit wait
        log to console     ${wait}
        set selenium implicit wait    10 seconds

         ${wait}         get selenium implicit wait
        log to console     ${wait}

        input text    id=name   Shiva
        input text    id=email    shivaya
        scroll element into view    xpath://input[@id='male']
        #Selecting radio button
        select radio button    gender    female
        select radio button    gender    male


