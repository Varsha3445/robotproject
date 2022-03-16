*** Settings ***
Library    Collections
*** Variables ***
${MY_NAME}      varsha patil
@{COLORS}       red     green      yellow

*** Test Cases ***
TC1
    Set Global Variable    ${name}   varsha
    Log To Console    ${name}

    ${val}   Set Variable   varsha
    Log To Console    ${name}

    Log To Console    ${MY NAME}

TC2
    Log To Console    ${MY_NAME}

TC3
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]

TC4
     @{abc}      Create List     patil       shal        var
    Log To Console    ${abc}[1]
    Remove Values From List     ${abc}      sha
    Log To Console    ${abc}
    Append To List    ${abc}    var
    Log To Console    ${abc}