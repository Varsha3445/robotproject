*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser     browser=headlesschrome  executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.medibuddy.in/
    Click Element    xpath=//button[text()='Not Now']
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Input Text    id=getInTouchName    varsha
    Input Text    id=getInTouchMobile   1234567
    Input Text    id=getInTouchEmail    var@123
    Input Text    id=getInTouchDesignation    employee
    Input Text    id=getInTouchEmpCount    16
    Click Element    xpath=//button[text()='Get in Touch']
    Element Text Should Be    //div[contains(text(),'digits')]    Mobile Number should be 10 digits
    [Teardown]  Close Browser

