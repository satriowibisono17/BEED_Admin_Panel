*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/
*** Test Cases ***
Login
    LoginToApplication
    sleep    3 s
    Close Browser

*** Keywords ***
 LoginToApplication
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    sleep   2s
    Click Element   xpath=//*[@id="Username"]
    Input Text      xpath=//*[@id="Username"]    satrio.wicaksono17@sharklasers.com
    click element   xpath=//*[@id="Password"]
    Input Text      xpath=//*[@id="Password"]   Satrio99_
    Click Button    xpath=//*[contains(text(), 'Login')]
    sleep    3s
    Page Should Contain	   Please choose the module to start your work

