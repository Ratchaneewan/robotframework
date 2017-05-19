*** Settings ***
Library    Selenium2Library


*** Testcases ***
Login success
    Open login page
    Fill in data
    Sumbit
    User must see the welcome page




*** Keywords ***

User must see the welcome page
    Wait Until Element Contains    xpath=//*[@id="container"]/h1    Welcome Page
    Page Should Contain Element    xpath=//*[@id="container"]/p/a
    Click Element    xpath=//*[@id="container"]/p/a
    Wait Until Page Contains    Login Page


Open login page
    Open Browser   http://localhost:7272    browser=gc

Fill in data
    Input Text    id=username_field    demo
    Input Text    id=password_field    mode

Sumbit
    Click Element    id=login_button




