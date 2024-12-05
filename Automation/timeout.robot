*** Settings ***
Library    SeleniumLibrary



#*** Variables ***
#${url}   https://testautomationpractice.blogspot.com/
#${browser}  chrome


*** Test Cases ***
speedTest

        open browser    https://testautomationpractice.blogspot.com/    chrome
        maximize browser window

        set selenium timeout    10 seconds
        wait until page contains    https://testautomationpractice.blogspot.com/
        wait until page contains    ShadowDOM      #for this command the defualt time is 5 seconds

        input text    id=name   Shiva
        input text    id=email    shivaya
        scroll element into view    xpath://input[@id='male']
        #Selecting radio button
        select radio button    gender    female
        select radio button    gender    male
