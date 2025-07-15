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
    View_Page_educator
    sleep    2s
    Search_Educators
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
    Click Element   xpath=//*[contains(text(), 'Admin panel ')]

View_Page_educator
    click element  xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav/div/div[2]/div[4]/a/span

Search_Educators
    Input Text      xpath=//*[@id="mat-input-1"]  Amelia Meidy
    Click element   xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav-content/div/beed-educators/mat-card/mat-card-content/div/div/div[1]/button