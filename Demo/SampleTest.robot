*** Settings ***
Documentation    This is a sample test case
Library    OperatingSystem

*** Keywords ***
Log My Credentials
    Log        ${DICTIONARY}[username]
    Log        ${DICTIONARY}[password]
    
Pressing Enter
    Log        Pressing the action of enter

Simulate Login
    Log My Credentials
    Pressing Enter
   
Log My Specific Username
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Log            ${USERNAME}
    Log            ${PASSWORD}

*** Variables ***
${MY-VARIABLE}               The xpath to use is

${GOOGLE-TEXTBOX}            //*[@id="APjFqb"]

@{LIST}                      test1    test2    test3    test4

&{DICTIONARY}                username=admin    password=password1234
&{GUEST-USER}                username=guest    password=password1234

*** Test Cases ***
Test 
    [Tags]     firstOnly    second
    Log        Running firstOnly and second tags

Test
    [Tags]     variable
    Log        ${MY-VARIABLE} ${GOOGLE-TEXTBOX}
    Log        ${LIST}[2]
    Log        ${DICTIONARY}[username] , ${DICTIONARY}[password]
    
Test: Using Keywords
    [Tags]     variable
    Log My Credentials
    Pressing Enter
    Simulate Login

Test: Keyword with a variable
    [Tags]     variable
    Log My Specific Username    ${GUEST-USER}[username]    ${GUEST-USER}[password]