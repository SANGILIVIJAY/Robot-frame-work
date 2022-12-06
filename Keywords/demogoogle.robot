*** Settings ***
Library  SeleniumLibrary
Resource    E:/Robot frame work/Variables/variablegoogle.robot

*** Keywords ***
browser should be opened
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${search}    10
    Click Element    ${search}
    Input Text    ${search}    AOT trailer  
    Wait Until Page Contains Element    ${button}   10
    Click Element   ${button}  

        
    