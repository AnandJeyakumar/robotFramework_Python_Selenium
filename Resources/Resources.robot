*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://admin-demo.nopcommerce.com/admin/
${browser}      firefox

*** Keywords ***
LanchBrowser
        open browser    ${url}      ${browser}
        maximize browser window
        sleep    3

closingBrowser
        close all browsers

Loging into Page
        go to    ${url}

inputUserName
        [Arguments]    ${userName}
        input text     id=Email      ${userName}

inputPassword
        [Arguments]    ${password}
        input text     id=Password      ${password}

clickLoginButton
        click element    xpath://button[@type='submit']

clickLogOutButton
        click element    xpath://a[normalize-space()='Logout']

errorMessageShouldBeVisible
        element should be visible    xpath://div[@class='message-error validation-summary-errors']
        page should contain    Login was unsuccessful. Please correct the errors and try again.

dashboardPageShouldBeVisible
        page should contain    Dashboard
        element should be visible    xpath://a[normalize-space()='Logout']
