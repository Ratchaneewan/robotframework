*** Settings ***
Library    Selenium2Library


*** Testcases ***
Choose File
    Open Choose a files to upload
    Select File
    Count number of uploaded files
    uploaded File
    Queue progress


*** Keyword ***

Open Choose a files to upload
    Open Browser    https://goo.gl/YE27iy    browser=gc

Count number of uploaded files
    Wait Until Element Contains    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/p    Queue length: 2
    Wait Until Element Contains    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[1]/td[1]/strong    2
    Table Cell Should Contain     xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table    2    1    17498759_10155910571373356_1425814085268738883_n.jpg
    Table Cell Should Contain     xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table    3    1    17498759_10155910571373356_1425814085268738883_n - Copy.jpg

Select File
    Choose File    xpath=//*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]    C:\\Users\\sneadmin\\Downloads\\17498759_10155910571373356_1425814085268738883_n.jpg
    Choose File    xpath=//*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]    C:\\Users\\sneadmin\\Downloads\\17498759_10155910571373356_1425814085268738883_n - Copy.jpg

uploaded file
    Click Element    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/div/button[1]

Queue progress
    Wait Until Page Contains Element    xpath=//div[@style="width: 100%;
