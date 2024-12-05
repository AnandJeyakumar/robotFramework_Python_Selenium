*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
browserCommands
        open browser    https://testautomationpractice.blogspot.com/    chrome
        maximize browser window

       sleep    3
       capture element screenshot    id=header-inner        logo.png
       sleep    3
#       capture page screenshot      page.png
#       capture page screenshot    C:\Users\USER\Documents\mydocs\pagee.png


