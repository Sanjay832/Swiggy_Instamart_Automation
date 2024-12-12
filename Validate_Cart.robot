*** Settings ***
Library        SeleniumLibrary
Library        Collections
*** Variables ***
${cart}=            xpath://*[text()='Go to Cart']
${items_numner}=    xpath://*[@data-testid='items-length']
*** Keywords ***
validate items in cart
    Wait Until Element Is Visible       ${cart}
    Click Element                       ${cart}
    Wait Until Element Is Visible       ${items_numner}
    ${no_items}    Get Text             ${items_numner}
    Log    number of items in cart:${no_items}
    @{items_in_cart}    Get WebElements    xpath://*[@data-testid='cart-item-name']
    FOR    ${element}    IN    @{items_in_cart}
        ${element_text}=    Get Text    ${element}
        Log    ${element_text}
    END
    