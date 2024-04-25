*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${MY_VARIABLE}

*** Keywords ***
    Wait Until Page Contains Element
    FOR    ${INDEX}    IN RANGE    0    5
        Wait Until Keyword Succeeds    
    END