*** Settings ***
Library    SeleniumLibrary
Resource   C:/robotFramework/Resources/Resources.robot
Library     DataDriver      C:/robotFramework/Resources/data.xlsx
Suite Setup    LanchBrowser
Suite Teardown    closingBrowser
Test Template    Invalid Login

*** Test Cases ***
LoginTest_By_Excel

*** Keywords ***
Invalid Login
        [Arguments]    ${userName}    ${password}
        inputUserName   ${userName}
        inputPassword   ${password}
        clickLoginButton
        sleep    2
        errorMessageShouldBeVisible


