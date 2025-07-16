*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/

*** Test Cases ***
ViewPageAdminPanel
    LoginToApplication
    AdminPanel
    sleep    10 s
    View_Page_Admin
    sleep    3s
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
    Click Element    xpath=/html/body/section/div/div/div[2]/div/div/div/div/div[2]/div/div/div/form/fieldset/div[3]/button
    sleep    3s
    Page Should Contain	   Please choose the module to start your work

AdminPanel
    Click Element   xpath=//*[contains(text(), 'Admin panel')]

View_Page_Admin
    Click Element   xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav/div/div[2]/div[10]/a/span