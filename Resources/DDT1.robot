*** Settings ***
Library    SeleniumLibrary
Resource   C:/robotFramework/Resources/Resources.robot
#Resource    ../Resources/Resources.robot
Suite Setup    LanchBrowser
Suite Teardown    closingBrowser
Test Template    Invalid Login

*** Test Cases ***                  username                    password

Right Email Wrong Password          admin@yourstore.com         admin1
Wrong Email Right Password          admin@yourstore111.com      admin


*** Keywords ***
Invalid Login
        [Arguments]    ${userName}    ${password}
        inputUserName   ${userName}
        inputPassword   ${password}
        clickLoginButton
        errorMessageShouldBeVisible


