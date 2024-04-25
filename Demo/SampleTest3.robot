*** Settings ***
Documentation    This is a sample test case
Library          OperatingSystem
Resource         ../Resources/resources.robot

*** Test Cases ***
Test: Reference Test
    [Tags]     variable
    Log My Specific Username    ${GUEST-USER}[username]    ${GUEST-USER}[password]