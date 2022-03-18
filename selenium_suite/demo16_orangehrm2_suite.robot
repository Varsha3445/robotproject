*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     DatabaseLibrary

*** Test Cases ***
TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
    Click Element    id=welcome
    Click Element    link=Logout

TC2
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Click Element    id=menu_pim_viewMyDetails
    Click Element    partial link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    name=emgcontacts[name]    Sat
    Input Text    id=emgcontacts_relationship    brother
    Input Text    id=emgcontacts_homePhone    78787
    Click Element    id=btnSaveEContact
    Table Should Contain    id=emgcontact_list    Sat
    Table Should Contain    id=emgcontact_list    78787
#    Row Count Is Equal To X    select * from tbl_emergency_contact where contact_name='Sat' and relationship='brother'    1
TC3
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}
    Open Browser    url=https://opensource-demo.orangehrmlive.com/      browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Input Text    css=#txtUsername    Admin
    Input Password    css=#txtPassword    admin123
    Click Element    css=input[value='Login']
    Page Should Contain    My Info
    Click Element    id=welcome
    Click Element    link=Logout