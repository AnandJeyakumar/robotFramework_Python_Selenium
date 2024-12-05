*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
dradAndDrop

        open browser   https://testautomationpractice.blogspot.com/     chrome
        maximize browser window
        sleep    3

        drag and drop    id=draggable       id=droppable
        sleep    4
        element text should be    id=droppable      Dropped!







