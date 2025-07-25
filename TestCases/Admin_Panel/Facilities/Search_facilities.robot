*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/

*** Test Cases ***
ViewPageAdminPanel
    LoginToApplication
    AdminPanel
    sleep    3 s
    viewpagefacilities
    sleep    3s
    SearchFacilities
    sleep   2s
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
    Click Button   xpath=//*[contains(text(), 'Login')]
    sleep    3s
    Page Should Contain	   Please choose the module to start your work

AdminPanel
     Click Element   xpath=//*[contains(text(), 'Admin panel')]

ViewPageFacilities
    Click Element   xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav/div/div[2]/div[6]

SearchFacilities
    click element   xpath=//*[@id="mat-input-1"]
    input text      xpath=//*[@id="mat-input-1"]    Classroom B
