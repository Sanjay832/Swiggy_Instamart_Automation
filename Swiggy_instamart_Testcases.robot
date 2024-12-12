*** Settings ***
Library     SeleniumLibrary
Library     Collections
Resource    resource.robot
Resource    ../Swiggy/set_address.robot
Resource    ../Swiggy/Category_List.robot
Resource    ../Swiggy/search.robot
Resource    ../Swiggy/Add_to_Cart.robot
Resource    ../Swiggy/Validate_Cart.robot

*** Test Cases ***
Open swiggy website
    [Documentation]   Opening swiggy instamart and setting location bangalore
    open browser with swiggy instamart url
    set address
get all category
    [Documentation]   Getting the category list
    get all category in list
search item
    [Documentation]   search for the item
    search
add item to cart
    [Documentation]   Viewing product preview image and adding to cart 
    add to cart
validate cart
    [Documentation]   Verifying cart checking no_item and name of the item
    validate items in cart