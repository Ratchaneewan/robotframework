*** Settings ***
Library    Selenium2Library
Library    Screenshot


*** Testcases ***
Fail with invalid email address
    Open register page
    Fill in personal information
    Fill in email
    Fill in password
    Choose birthday
    Choose gender
    Create account
    Should show error message

*** Keywords ***

Open register page
    Open Browser   https://www.facebook.com    browser=gc

Fill in personal information
    Input Text    id=u_0_1    Ratchaneewan
    Input Text    id=u_0_3    Vongkaew
    Take Screenshot

Fill in email
    Input Text    id=u_0_6    dsfsf@sfffdf.com
    Input Text    id=u_0_9    dsfsf@sfffdf.com
    Take Screenshot

Fill in password
    Input password    id=u_0_d    123456789
    Take Screenshot

Choose birthday
    Select From List By Value    name=birthday_day    16
    Select From List By Value    name=birthday_month    8
    Select From List By Value    name=birthday_year    1979
    Take Screenshot

Choose gender
    Select Radio Button    sex    1
    Take Screenshot

Create account
    Click Element    xpath=//*[@id="u_0_l"]

Should show error message
    Wait Until Element Is Visible    id=reg_error_inner
    ${Text}=    Get Text    id=reg_error_inner
    Log    ${text}
    Should Contain    ${text}    ดูเหมือนว่าคุณอาจป้อนที่อยู่อีเมลที่ไม่ถูกต้อง โปรดแก้ไข จากนั้นคลิกเพื่อดำเนินการต่อ
    Take Screenshot

    #Wait Until Element Contains    xpath=//*[@id="reg_error_inner"]    ดูเหมือนว่าคุณอาจป้อนที่อยู่อีเมลที่ไม่ถูกต้อง โปรดแก้ไข จากนั้นคลิกเพื่อดำเนินการต่อ
