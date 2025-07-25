*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/

*** Test Cases ***
Search_Data_Parents
    LoginToApplication
    AdminPanel
    sleep    3 s
    View_Parents
    Search_Parents
    sleep    2s
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
    Click Element    xpath=/html/body/section/div/div/div[2]/div/div/div/div/div[2]/div/div/div/form/fieldset/div[3]/button
    sleep    3s


AdminPanel
    Click Element   xpath=//html/body/app-diary/app-entry/div/div/div[3]/div[3]

View_Parents
    Click Element  xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav/div/div[2]/div[3]
    sleep    3s

Search_Parents
    Input Text      xpath=//*[@id="mat-input-1"]   Putra Wijayanto
    Click Element   xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav-content/div/beed-parent-list/mat-card/mat-card-content/div/div[2]/div[1]/button