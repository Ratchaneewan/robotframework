*** Settings ***
Library    Selenium2Library

*** Testcases ***
Wrong usermane
    Open login page
    Fill in    username    mode
    Sumbit
    User must see the error page

Wrong password
    Open login page
    Fill in    demo    password
    Sumbit
    User must see the error page

Wrong username password
    Open login page
    Fill in    username    password
    Sumbit
    User must see the error page

Missing username
    Open login page
    Fill in    ${EMPTY}    mode
    Sumbit
    User must see the error page

Missing password
    Open login page
    Fill in    demo    ${EMPTY}
    Sumbit
    User must see the error password

Missing username password
    Open login page
    Fill in    ${EMPTY}    ${EMPTY}
    Sumbit
    User must see the error page


*** Keyword ***
Open login page
    Open Browser   http://localhost:7272    browser=gc

Fill in
    [Arguments]    ${username}    ${password}
    Input Text    id=username_field    ${username}
    Input Text    id=password_field    ${password}

Sumbit
    Click Element    id=login_button

User must see the error page
    Wait Until Element Contains    xpath=//*[@id="container"]/h1    Error Page