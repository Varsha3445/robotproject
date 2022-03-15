*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser     browser=chrome  executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.medibuddy.in/
    Click Element    xpath=//button[text()='Not Now']
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Input Text    id=getInTouchName    varsha
    Input Text    id=getInTouchMobile   99999
    Input Text    id=getInTouchEmail    var@123
    Close Window
