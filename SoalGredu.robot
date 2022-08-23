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
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div[2]/div/div/div[2]/div[1]/div[1]/div[2]/span
    Click Element                    xpath=//*[@id="__next"]/section/main/section/main/div/div[2]/div[2]/div/div/div[2]/div[1]/div[1]/div[2]/span
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/section/div/main/div/div[1]/button
    Click Element                    xpath=//*[@id="__next"]/section/div/main/div/div[1]/button
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/section/div/main/div/div[1]/button/div/div/div/ul/li[3]/span
    Click Element                    xpath=//*[@id="__next"]/section/div/main/div/div[1]/button/div/div/div/ul/li[3]/span
    Wait Until Element Is Visible    xpath=//*[@id="create-materi_title"]
    Input Text                       xpath=//*[@id="create-materi_title"]          Materi Robot
    Wait Until Element Is Visible    xpath=//*[@id="create-materi_description"]   
    Input Text                       xpath=//*[@id="create-materi_description"]    Belajar Robot
    Wait Until Element Is Visible    xpath=//*[@id="create-materi"]/div[4]/div[2]/div/div/span/input
    Click Element                    xpath=//*[@id="create-materi"]/div[4]/div[2]/div/div/span/input
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div/div[2]/div/div[2]/div[2]/div[1]/div[2]/div/div/div/div/div/div[2]/table/tbody/tr[2]/td[1]/label/span/input
    Click Element                    xpath=/html/body/div[2]/div/div[2]/div/div[2]/div[2]/div[1]/div[2]/div/div/div/div/div/div[2]/table/tbody/tr[2]/td[1]/label/span/input
    Wait Until Element Is Visible    xpath=//html/body/div[2]/div/div[2]/div/div[2]/div[3]/button[2]
    Click Element                    xpath=//html/body/div[3]/div/div[2]/div/div[2]/div[3]/button[2]
    Wait Until Element Is Visible    xpath=//*[@id="create-materi"]/div[8]/div/div/div/div/div[2]/button
    Click Element                    xpath=//*[@id="create-materi"]/div[8]/div/div/div/div/div[2]/button
Close
    Sleep                            3
    Close Browser







