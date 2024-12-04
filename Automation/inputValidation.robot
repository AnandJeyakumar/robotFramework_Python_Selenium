*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}   https://www.flipkart.com/
${browser}  chrome


*** Test Cases ***
flipkartValidation_Test
    open browser        ${url}      ${browser}
    wait until page contains    ${url}
    maximize browser window
    title should be    Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
    sleep       2
    click element       //span[normalize-space()='Login']
    ${input_txt}    set variable    xpath://input[@class='r4vIwl BV+Dqf']
    element should be enabled    ${input_txt}
    element should be visible    ${input_txt}
    sleep       2
    input text      ${input_txt}      Om Namashivaya
    sleep       2
    clear element text      xpath:(//input[@type='text'])[2]
    sleep       3
    close browser




*** Keywords ***
