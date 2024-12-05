*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
closeBrowser
        open browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      chrome
        maximize browser window
        sleep    3


        open browser    https://www.orangehrm.com/      chrome
        maximize browser window
        sleep    3


#        close browser     #Cose the last close browser
        close all browsers

         sleep    3





*** Keywords ***



