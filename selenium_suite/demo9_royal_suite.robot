*** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser

*** Test Cases ***
TC1 Sign Up
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed  1s
    Go To    url=https://www.royalcaribbean.com/account/
    Click Element    link=Create an account
    Input Text    xpath=//input[@data-placeholder='First name/Given name']    varsha
    Input Text    xpath=//input[@data-placeholder='Last name/Surname']    patil
    Click Element    xpath=//span[text()='Month']
    Click Element    xpath=//span[contains(text(),'April')]
    Click Element    xpath=//span[text()='Day']
    Click Element    xpath=//span[contains(text(),'4')]
    Input Text    xpath=//input[@data-placeholder='Year']    1992
    Sleep    5s
    Click Element   xpath=//span[text()='Country/Region of residence']
    Click Element   xpath=//span[contains(text(),'India')]
    Input Text    xpath=//input[@data-placeholder='Email address']   varsha@123
    Click Element    xpath=//span[text()='Select one security question']
    Click Element    xpath=//span[contains(text(),'What elementary school did you go to?')]
    Input Text    xpath=//input[@data-placeholder='Answer']    MMVM
    Click Element    xpath=//span[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin']
    Click Element    xpath=//button[normalize-space()='Done']
    Click Element    xpath=//input[@type='checkbox']/..

    Click Element   xpath=//button[normalize-space()='Done']

    Element Text Should Be  Locator  Password is required.

    Sleep  5s



