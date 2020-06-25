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
