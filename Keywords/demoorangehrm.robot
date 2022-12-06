*** Settings ***
Library  SeleniumLibrary
Resource    E:/Robot frame work/Variables/variableorangehrm.robot

*** Keywords ***
check the login functionlity
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    Sleep    10
    Page Should Contain    Login  
    Log To Console    page should found
username entered
    Wait Until Page Contains Element    ${username}    25
    Log To Console    username is found
    Click Element    ${username}
    Log To Console  username is clicked
    Input Text    ${username}    ${data}
    Log To Console    username entered
password entered
    Wait Until Page Contains Element    ${password}    25
    Log To Console    password is found
    Click Element    ${password}
    Log To Console  password is clicked
    Input Text    ${password}    ${data1}
    Log To Console    password entered
clicked on login
    Log To Console    login is found
    Click Element    ${login}
    Log To Console    login is clicked
click the side menu timelink
    click the side menu   ${timelink}
    Sleep    3
Different module
    click the side menu  ${reclink}
    Sleep    5
    Click Element    ${jobtitle}
    

#Navigating through drop down
job title dropdown 
    FOR    ${i}    IN RANGE    1    25
        Press Keys  none    ARROW_DOWN
        ${element2} =  Run Keyword And Return Status    Element Should be Visible    ${network} 
        IF  ${element2}
            Wait Until Element Is Visible    ${network}
            Click Element    ${network}
            Exit For Loop
        ELSE
            Log    Continue
        END
    END
            
    
    
       
#click the side menu userdefined method
click the side menu
    [Arguments]    ${element}
    Wait Until Page Contains Element    ${element}    15
    Click Element    ${element}

    
    

   
  
        
    