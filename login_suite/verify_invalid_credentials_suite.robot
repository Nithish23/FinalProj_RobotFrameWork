*** Settings ***
Documentation      This suit file handles all the test case related to the
...     invalid credentials
Resource      ../pages/login_page.resource

Test Setup      Launch Browser
Test Teardown   End Browser

Test Template       Verify Invalid Credential Template

*** Test Cases ***
TC1     nithishabc@gmail.com        nitu123       ${EMPTY}
TC2     ayyapan@gmail.com        a7374123       ${EMPTY}
TC3     abcd@gmail.com        abcd%#123      ${EMPTY}
TC4     jack@gmail.com        jvjddf66     ${EMPTY}

*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${expected_error}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login
    Validate Invalid Error Message    ${expected_error}