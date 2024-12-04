*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${url}   https://testautomationpractice.blogspot.com/
${browser}  chrome


*** Test Cases ***
listBox
        open browser    ${url}          ${browser}
        maximize browser window
        sleep    2

#        selecting items from listbox
        scroll element into view        xpath://select[@id='colors']
        select from list by label       colors      Blue
        sleep    2
        select from list by index       colors         0
        sleep       2
        select from list by value       colors     green
        sleep       3

*** Keywords ***
