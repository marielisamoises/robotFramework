*** Settings ***
Library          Selenium2Library
Resource         ../resources/pages/Home_page.robot
Resource         ../resources/specs/T1-spec.robot
Suite Teardown   Close Browser

*** Test Cases ***
Scenario 01: Put a blouse on the cart
    Given I'm on site home
    When click on women button and add a Blouse to the cart
    Then the blouse must be on the cart