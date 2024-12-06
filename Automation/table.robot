*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browserName}      chrome

*** Test Cases ***
practiceForm
        open browser       ${url}      ${browserName}
        maximize browser window
        sleep    3

        ${rows}     get element count       xpath:(//table)[1]//tr
        ${columns}  get element count       xpath:(//table)[1]//tr/th

        log    ${rows}
        log    ${columns}
        log to console    ${rows}
        log to console    ${columns}

        ${text}     get text        xpath:(//table)[1]//tr[4]/td[3]
        log to console    The Text is ${text}

        table column should contain     xpath://table[@name='BookTable']        1       BookName
        table row should contain        xpath://table[@name='BookTable']        5       Selenium

        table cell should contain       xpath://table[@name='BookTable']       6       2       Amod
        table header should contain     xpath://table[@name='BookTable']       BookName


#        FOR    ${row}    IN RANGE   2    ${rows}
#            FOR    ${col}    IN RANGE    1    ${columns}
#            ${cellText}=    Get Text    xpath:(//table)[1]//tr[${row}]/td[${col}]
#            Log To Console    Row ${row}, Column ${col}: ${cellText}
#            END
#        END


