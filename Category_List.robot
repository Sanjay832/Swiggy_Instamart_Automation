*** Settings ***
Library        SeleniumLibrary
Library        Collections
*** Variables ***
${pop-up_tip}=    xpath:(//div[text()='Re-check your address to see if we deliver to your location'])[2]
*** Keywords ***
get all category in list
    ${count}=    Set Variable    1
    Wait Until Element Is Visible     ${pop-up_tip}  timeout=10s
    Click Element                     ${pop-up_tip}
    @{category_list}=    Create List
    @{category}    Get WebElements    xpath://div[@role='listitem']
    FOR    ${element}    IN    @{category}
        ${text}=     Get Text    ${element}
        Append To List    ${category_list}    ${text}
        Exit For Loop If    '${count}'=='24'
        ${count}=    Evaluate    ${count}+1
    END
    FOR    ${category_text}    IN    @{category_list}
        Log    ${category_text}
        
    END