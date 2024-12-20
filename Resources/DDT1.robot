*** Settings ***
Library    SeleniumLibrary
Resource   C:/robotFramework/Resources/Resources.robot
#Resource    ../Resources/Resources.robot
Suite Setup    LanchBrowser
Suite Teardown    closingBrowser
Test Template    Invalid Login

*** Test Cases ***           userName                   password
right user worng pswd        admin@yourstore.com        adminqq
wrng user right paswd        admin@yiyi.com             admin
right user empty pswd        admin@yourstore.com        ${empty}
empty user right pswd        ${empty}                   admin
wrng user worng pswd         admin@yiyi.com             xyz

*** Keywords ***
Invalid Login
        [Arguments]    ${userName}    ${password}
        inputUserName   ${userName}
        inputPassword   ${password}
        clickLoginButton
        sleep    2
        errorMessageShouldBeVisible


