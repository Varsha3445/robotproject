*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser     browser=chrome  executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    Click Element   partiallink=phpMyAdmin
    Input Text    id=input_username    admin
    Input Text    id=input_Password    admin123
    Click Element    id=input_go



