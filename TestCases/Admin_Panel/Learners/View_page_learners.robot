*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/

*** Test Cases ***
LearnerPages
    LoginToApplication
    AdminPanel
    sleep    5s
    View_Learners
    sleep    5s
    Capture Page Screenshot
    Close Browser


*** Keywords ***
LoginToApplication
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    sleep   2s
    Click Element   xpath=//*[@id="Username"]
    Input Text      xpath=//*[@id="Username"]    admin@acd.com
    click element   xpath=//*[@id="Password"]
    Input Text      xpath=//*[@id="Password"]   @@Password123@@
    Click Button    xpath=//*[contains(text(), 'Login')]
    sleep    3s

AdminPanel
    Click Element   xpath=//*[contains(text(), 'Admin panel')]

View_Learners
    click element   xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav/div/div[2]/div[2]