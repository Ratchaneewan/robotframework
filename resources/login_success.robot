*** Settings ***
Library    Selenium2Library


*** Testcases ***
Login success
    Open login page
    Fill in username and password
    Sumbit
    User must see the welcome page




*** Keywords ***
Open Browser
    Open Browser   http://localhost:7272/, browser=gc

Fill in data
    Input text    id=username_field,    demo
    Input text    id=password_field,    mode

Sumbit
    Click Element    id=login_button

User must see the welcome page
    Wait Until Element Contains    xpath=//*[@id="container"]/h1    Welcome Page

User must see the link logout
    Page Should Contain Element    xpath=//*[@id="container"]/p/a