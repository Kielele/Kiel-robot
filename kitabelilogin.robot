*** Settings ***
Library           SeleniumLibrary
*** Variables ***
${URL}            https://linkedin.com
${BROWSER}        chrome
*** Test Cases ***
linkedin
    Launch Browser
    LoginLinkedin
    Close
*** Keywords ***
Launch Browser
    Open Browser                     ${URL}         ${BROWSER}
    Maximize Browser Window
LoginLinkedin
    Click Element                        xpath=/html/body/nav/div/a[2]
    Wait Until Element Is Visible        id=username    
    Input Text                           id=username      hi.yehezkiel@gmail.com
    Input Password                       id=password      airputih22
    Click Element                        xpath=//*[@id="organic-div"]/form/div[3]/button
    Wait Until Element Is Enabled        xpath=//*[@id="global-nav-typeahead"]/input                                  3
    Input Text                           xpath=//*[@id="global-nav-typeahead"]/input                                kitabeli
    Press Keys                           xpath=//*[@id="global-nav-typeahead"]/input                                ENTER
    Wait Until Element Is Visible        xpath=//*[@id="main"]/div/div/div[2]/ul/li/div/div/div[2]/div[1]/div[1]/div/span/span/a
    Click Element                        xpath=//*[@id="main"]/div/div/div[2]/ul/li/div/div/div[2]/div[1]/div[1]/div/span/span/a
Close
    Sleep                            3
    Close Browser 