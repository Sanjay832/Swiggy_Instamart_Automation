*** Settings ***
Library        SeleniumLibrary
Library    Collections
*** Variables ***
${search_container}=       xpath://button[@data-testid='search-container']
${search_bar}=             xpath://input[@type='search']
${auto_suggest_search}=    xpath:(//li[@data-testid="search-page-auto-suggest-suggestion"])[1]
*** Keywords ***
search
    Wait Until Page Contains Element    ${search_container}   timeout=10s
    Click Element                       ${search_container}
    Wait Until Element Is Visible       ${search_bar}
    Sleep    3s
    Click Element                       ${search_bar}
    Input Text                          ${search_bar}    bedsheets
    Wait Until Element Is Visible       ${auto_suggest_search}
    Click Element                       ${auto_suggest_search}