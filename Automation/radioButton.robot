*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${url}   https://testautomationpractice.blogspot.com/
${browser}  chrome


*** Test Cases ***
radioButton
       open browser    ${url}      ${browser}
       maximize browser window
       set selenium speed    2Seconds
       scroll element into view    xpath://input[@id='male']

        #Selecting radio button
       select radio button    gender    female


#       Selecting Checkboxes
        select checkbox    monday
        select checkbox    tuesday
        select checkbox    thursday
        select checkbox    friday

        scroll element into view    xpath://button[@class='dropbtn']

        unselect checkbox    monday













































*** Keywords ***
