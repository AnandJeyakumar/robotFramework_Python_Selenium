*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
mouseActions

        open browser    https://testautomationpractice.blogspot.com/    chrome
        maximize browser window

        sleep    3
#        open context menu     xpath://button[@id='alertBtn']      #right click
        double click element        xpath://button[normalize-space()='Copy Text']
        sleep   3
        ${copy text}    get value   id=field2
        log to console    ${copy text}
        should be equal    ${copy text}     Hello World!





