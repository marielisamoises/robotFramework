*** Settings ***
Library          Selenium2Library

*** Variable ***
${BROWSER}                chrome
${URL}                    http://automationpractice.com
${WOMEN_BUTTON}           xpath=.//*[@id="block_top_menu"]/ul/li[1]/a

### Women Section
${BLOUSE}                 xpath=.//*[@id="mcenter_column"]/ul/li[2]/div/div[2]/h5/a
${ADD_TO_CART}            xpath=.//*[@id="add_to_cart"]/button/span
${ADD_SUCCESS_MSG}        xpath=.//*[@id="layer_cart"]/div[1]/div[1]/h2

*** Test Cases ***   
Scenario 01: Put a blouse on the cart
    Given I'm on site home
    When click on women button and add a Blouse to the cart
    Then the blouse must be on the cart

*** Keywords ***
Given I'm on site home
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible   ${WOMEN_BUTTON}  

When click on women button and add a Blouse to the cart
    Click Element   ${WOMEN_BUTTON}
    Wait Until Element Is Visible   ${BLOUSE}
    Click Element   ${BLOUSE}
    Wait Until Element Is Visible   ${ADD_TO_CART}
    Click Element   ${ADD_TO_CART}
    
Then the blouse must be on the cart  
    Wait Until Element Is Visible   ${ADD_SUCCESS_MSG}
    Element Should Contain          ${ADD_SUCCESS_MSG}     Product successfully added to your shopping cart
