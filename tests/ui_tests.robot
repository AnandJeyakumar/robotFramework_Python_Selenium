*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser     https://www.google.com/?hl=en
Suite Teardown    Close Browser


*** Variables ***
${browser}  headlesschrome
${search_term}  Robot Framework
${wait_time}    4s

*** Test Cases ***
Search Google and Validate Results
    [Documentation]    Search for Google and Validate Search Results
    Input Text    //textarea[@id='APjFqb']    ${search_term}
    press keys     name:q    RETURN
    set selenium timeout    4 seconds
    wait until element is visible    //div[text()='Robot Framework']
    element should be visible    //div[text()='Robot Framework']
    log     Found ${search_term} in the Google Search Results


Verify First Result Contain Search Items
    [Documentation]    Verify the first search result contains the specified search items
    ${FirstText}=   get text    (//div[@id='search']//h3)[1]
    should contain      ${FirstText}        ${search_term}


Check Logo is Visible
    [Documentation]    Verify the Google logo is visible on the search results page
    Input Text    //textarea[@id='APjFqb']    ${search_term}
    press keys     name:q    RETURN
    set selenium timeout    7 seconds
    element should be visible    id=logo