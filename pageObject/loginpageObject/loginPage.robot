*** Settings ***
Resource         ../base/base.robot
Variables        login_locaters.yaml


*** Keywords ***

Input Username On Login Page
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${username-input} 
    Input Text    ${username-input}     ${username}

Input Password On Login Page
    Wait Until Element Is Visible    ${password-input}
    [Arguments]   ${password}
    Input Text    ${password-input}     ${password}
Click Sign In Button on Login Page
    Click Element     ${log-in-button}