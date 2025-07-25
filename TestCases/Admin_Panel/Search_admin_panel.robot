*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/
${Text}       users found

*** Test Cases ***
ViewPageAdminPanel
    LoginToApplication
    AdminPanel
    sleep    3 s
    SearchAdminPanel
    sleep   4s
    Capture Page Screenshot
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

AdminPanel
    Click Element   xpath=//html/body/app-diary/app-entry/div/div/div[3]/div[3]

SearchAdminPanel
    click element   xpath=//*[@id="mat-input-0"]
    Input text      xpath=//*[@id="mat-input-0"]    Snowy
    click element   xpath=/html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav-content/div/app-dashboard/div[1]/div/div/div[1]/button

