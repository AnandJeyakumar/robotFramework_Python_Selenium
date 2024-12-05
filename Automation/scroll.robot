*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
browserCommands
        open browser    https://testautomationpractice.blogspot.com/    chrome
        maximize browser window

        sleep    3
        execute javascript    window.scrollTo(0,1400)
        sleep    3

        scroll element into view    xpath://h2[normalize-space()='Footer Links']
        sleep    3

        execute javascript    window.scrollTo(0,document.body.scrollHeight)
        sleep    3

        execute javascript     window.scrollTo(0,-document.body.scrollHeight)
        sleep    3



