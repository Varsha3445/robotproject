*** Settings ***
Library    OperatingSystem
*** Test Cases ***
* Test Cases *
TC1
    Log To Console    ${CURDIR}
    Log To Console    ${EXECDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${TEMPDIR}
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}

TC2
    Create Directory   E:${/}LTTS${/}robort${/}temp${/}My_Folder
    Create File    E:${/}LTTS${/}robort${/}temp${/}My_Folder${/}notes.txt       varsha
    Copy File    E:${/}LTTS${/}robort${/}temp${/}My_Folder${/}notes.txt    xyz1
    Remove File    E:${/}LTTS${/}robort${/}temp${/}My_Folder${/}notes.txt robot
    Remove Directory    E:${/}LTTS${/}robort${/}temp${/}My_Folder    true

TC3

