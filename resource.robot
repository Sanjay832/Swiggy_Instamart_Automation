*** Settings ***
Library        SeleniumLibrary
Library        Collections
*** Variables ***
${URL}        https://www.swiggy.com/instamart

*** Keywords ***
open browser with swiggy instamart url
    Create Webdriver    Chrome
    Maximize Browser Window
    Go To        ${URL}