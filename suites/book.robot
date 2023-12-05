*** Settings ***
Resource        ../pageObject/homepageObject/homePage.robot
Resource         ../pageObject/loginpageObject/loginPage.robot
Resource         ../pageObject/bookpageObject/bookPage.robot


*** Variables ***
${VALID_USERNAME}    support@ngendigital.com
${VALID_PASSWORD}    abc123




*** Test Cases ***
Booking One Way Flight
    Open Flight Application
    Click Sign In Button On Home Page
    loginPage.Input Username On Login Page    ${VALID_USERNAME}
    loginPage.Input Password On Login Page    ${VALID_PASSWORD} 
    Click Sign In Button on Login Page
    Click Booking Toolbar in Main menu
    Select Value From City in Spinner
    Select Value Seat Class
    Select Value Start Date
    Select Value End Date
    Select Value Additional
    Click Book Button on Book Page
    Click Price and Date Available
    Click Button Confrim on Order Page