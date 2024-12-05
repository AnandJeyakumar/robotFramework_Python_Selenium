*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
closeBrowser
        open browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login      chrome
        maximize browser window
        sleep    3

        click element    xpath:(//a)[5]
        sleep    3
        switch window    OrangeHRM
        sleep    3
        close window
         sleep    3











