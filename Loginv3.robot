*** Settings ***
Library           SeleniumLibrary
*** Variables ***
${URL}            https://gredu.sowat.dev/auth
${BROWSER}        chrome
#${BROWSER}       headlesschrome
${EMAIL}          nabilaputrikinanty55@gmail.com
${PASSWORD}       123456
${WELCOME TEXT}   Masuk ke Akunmu
*** Test Cases ***
Gredu V3 Automation
    Launch Browser
    Login Dev
    Class
    Initialize soal
    Close
*** Keywords ***
Launch Browser
    Open Browser                     ${URL}         ${BROWSER}
    Maximize Browser Window
Login Dev
    Page Should Contain              ${WELCOME TEXT}
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div/form/div[1]/div/div[1]/div/input
    Input Text                       xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div/form/div[1]/div/div[1]/div/input       ${EMAIL}
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div/form/div[2]/div/div[1]/div/span/input
    Input Text                       xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div/form/div[2]/div/div[1]/div/span/input  ${PASSWORD}
    Click Element                    xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div/form/button
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/section/main/section/main/div/div/div/button  30
    Click Element                    xpath=//*[@id="__next"]/section/main/section/main/div/div/div/button
Class
    Wait Until Element Is Visible    css=#__next > section > main > section > main > div > div:nth-child(2) > div:nth-child(1) > div > div > div.style__BodyCardBoxContainer-sc-1ngqta0-4.bRTmAm > div.style__BodyCardBox-sc-1ngqta0-3.eocakt > div:nth-child(2) > span > svg
    Click Element                    css=#__next > section > main > section > main > div > div:nth-child(2) > div:nth-child(1) > div > div > div.style__BodyCardBoxContainer-sc-1ngqta0-4.bRTmAm > div.style__BodyCardBox-sc-1ngqta0-3.eocakt > div:nth-child(2) > span > svg
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div[1]/div/div/div[2]/div[1]/div[2]/span/div/div/div/div/div[1]/div/span
    Click Element                    xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div[1]/div/div/div[2]/div[1]/div[2]/span/div/div/div/div/div[1]/div/span
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/section/div/main/div/div[1]/button/span[2]
    Click Element                    xpath=//*[@id="__next"]/section/div/main/div/div[1]/button/span[2]
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/section/div/main/div/div[1]/button/div/div/div/ul/li[2]
    Click Element                    xpath=//*[@id="__next"]/section/div/main/div/div[1]/button/div/div/div/ul/li[2]
    Click Element                    xpath=/html/body/div[2]/div/div[2]/div/div[2]/div[2]/div/div[1]/div[2]
Initialize soal
    Wait Until Element Is Visible     xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/form[1]/div/div[2]/div/div/div/div/input
    Press Keys                        xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/form[1]/div/div[2]/div/div/div/div/input         COMMAND+A
    Press Key                         xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/form[1]/div/div[2]/div/div/div/div/input         \\8
    Input Text                        xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/form[1]/div/div[2]/div/div/div/div/input         Test Robot
    Click Element                     xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/form[1]/div/div[7]/span/div/button
    Click Element                     xpath=//html/body/div[2]/div/div/ul/li[1]/span/div/span
    Wait Until Element Is Visible     xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/form[1]/div/div[8]/div/div[2]/div/a/button/span
    Click Element                     xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/form[1]/div/div[8]/div/div[2]/div/a/button/span
Close
    Sleep                            3
    Close Browser







