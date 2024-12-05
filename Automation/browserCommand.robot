*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
browserCommands
        open browser    https://testautomationpractice.blogspot.com/    chrome
        maximize browser window

        sleep    3
        go to    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
        sleep    3
        go back
        sleep    3
