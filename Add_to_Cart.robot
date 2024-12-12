*** Settings ***
Library        SeleniumLibrary
Library        Collections
*** Variables ***
${first_item}=     xpath:((//div[@data-testid="default_container_ux4"])[1]/div//child::div[2])[1]
${img_view}=       xpath:(//div[@data-testid="image-card-div"])[1]
${img_preview}=    xpath:(//div[@data-testid="footer-preview-image"])
${add}=            xpath:(//button[@data-testid='add_buttons_center'])[1]/div

*** Keywords ***
add to cart
    Wait Until Element Is Visible       ${first_item}
    Click Element                       ${first_item}
    Sleep    2s
    Click Element                       ${img_view}
    @{preview}    Get WebElements       ${img_preview}
    FOR    ${element}    IN    @{preview}
        Click Element    ${element}
        
    END
    Click Element                       css:*[class='hKlRw']
    Wait Until Element Is Visible       ${add}
    Scroll Element Into View            xpath://*[text()='Highlights']
    Click Element                       ${add}