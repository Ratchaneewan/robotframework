*** Settings ***
Resource    resources/share.robot
Suite Setup    Open browser to open google.com
Suite Teardown    Close Browser



*** Testcases ***
Search rule
    [Template]    Search workflow
    python    python
    robot    robot
    somkiat    somkiat
 

