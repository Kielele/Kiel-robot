*** Settings ***
Resource    Users/yehezkiel.panangian/Documents/Robot/Loginlinkedin.robot
Library           SeleniumLibrary
Library    Telnet
*** Variables ***
${URL}            https://www.linkedin.com/
${BROWSER}        chrome
#${BROWSER}       headlesschrome
${EMAIL}          hi.yehezkiel@gmail.com
${PASSWORD}       airputih22

*** Test Cases ***
Linkedin
    Launch Browser
    LoginLinkedin
    Close

*** Keywords ***
Launch Browser
    Open Browser    ${URL}     ${BROWSER}
    Maximize Browser Window

LoginLinkedin    
     Wait Until Element Is Visible    xpath=//html/body/nav/div/a[2]      
     Click Element                    xpath=//html/body/nav/div/a[2]  
     Input Text                       xpath=//*[@id="username"]    hi.yehezkiel@gmail.com
     Input Password                   xpath=//*[@id="password"]    airputih22
     Click Element                    xpath=//*[@id="organic-div"]/form/div[3]/button
     Wait Until Element Is Enabled    xpath=//*[@id="global-nav-typeahead"]/input     3
     Input Text                       xpath=//*[@id="global-nav-typeahead"]/input     kitabeli 
     Press Keys                       xpath=//*[@id="global-nav-typeahead"]/input     ENTER 
     Wait Until Element Is Visible    xpath=//*[@id="main"]/div/div/div[1]/div/a/div/div[2]/div[2]/a/div/span
     Click Element                    xpath=//*[@id="main"]/div/div/div[1]/div/a/div/div[2]/div[2]/a/div/span

    
Close
    Sleep    3
    Close Browser