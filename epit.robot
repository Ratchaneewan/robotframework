*** Settings ***
Library    Selenium2Library

*** Testcases ***
Check alert box
    Open page
    Select Thai Nationality
    Select OK Button
    Check E011
    Check logout Button
    Select cancel Button

*** Keyword ***
Open page
    Open Browser    https://epit.rd.go.th/EFILING/RegController?PRGID=R008T    browser=gc

Select Thai Nationality
    Click Link    สัญชาติไทย

Select OK Button
    Click Element    xpath=//*[@id="bOK1"]

Check E011
    ${result}=    Get Alert Message
    Should Contain    ${result}    E011

Check logout Button
    Click Element    xpath=//*[@id="bExit1"]

Select cancel Button
    Choose Cancel On Next Confirmation
    Confirm Action



