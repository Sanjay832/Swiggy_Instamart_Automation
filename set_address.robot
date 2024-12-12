*** Settings ***
Library        SeleniumLibrary
Library        Collections
*** Variables ***
${confirm_locatiom}=    xpath://div[contains(text(),'Confirm Location')]
${select_bangalore}=    xpath://*[text()="Bangalore"][2]
*** Keywords ***
set address
    Sleep    2s
    Click Element                    xpath://*[text()='Search for an area or address']
    Input Text                       xpath://input[@placeholder="Search for area, street name…"]    bang
    Wait Until Element Is Visible    ${select_bangalore}
    Execute Javascript    document.evaluate('//*[text()="Bangalore"][2]',document.body,null,9,null).singleNodeValue.click();
    Wait Until Element Is Visible    ${confirm_locatiom}    timeout=10s
    Click Element                    ${confirm_locatiom}