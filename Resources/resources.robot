*** Settings ***
Documentation    This is a sample test case
Library          OperatingSystem

*** Variables ***
&{GUEST-USER}                username=guest    password=test1234


*** Keywords ***
Log My Specific Username
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Log            ${USERNAME}
    Log            ${PASSWORD}
