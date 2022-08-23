*** Settings ***
Library           SeleniumLibrary
*** Variables ***
${URL}            https://www.linkedin.com/
${BROWSER}        chrome
#${BROWSER}       headlesschrome
${EMAIL}          yehezkielsitorus.es@gmail.com
${PASSWORD}       Airputih22
*** Test Cases ***
Linkedin V3 Automation
    Launch Browser
    Login Dev
    Close
*** Keywords ***
Launch Browser
    Open Browser                     ${URL}         ${BROWSER}
    Maximize Browser Window
Login Dev
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div/form/div[1]/div/div[1]/div/input
    Input Text                       xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div/form/div[1]/div/div[1]/div/input       ${EMAIL}
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div/form/div[2]/div/div[1]/div/span/input
    Input Text                       xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div/form/div[2]/div/div[1]/div/span/input  ${PASSWORD}
    Click Element                    xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div/form/button
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/section/main/section/main/div/div/div/button  30
    Click Element                    xpath=//*[@id="__next"]/section/main/section/main/div/div/div/button