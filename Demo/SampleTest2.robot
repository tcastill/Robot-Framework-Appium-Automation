*** Settings ***
Documentation    This is a sample test case
Library          OperatingSystem

*** Keywords ***

*** Variables ***

*** Test Cases ***
Test2
    [Tags]    third    fourth
    log       Running third and fourth tag test
Test
    [Tags]    firstOnly    
    Log       Running firstOnly test
Test3
    Log       This is Test3 with no tags