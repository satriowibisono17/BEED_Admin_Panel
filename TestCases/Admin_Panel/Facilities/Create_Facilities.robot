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
    sleep   2s
    CreateFacilities
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
    Page Should Contain	   Please choose the module to start your work

AdminPanel
     Click Element   xpath=//*[contains(text(), 'Admin panel')]

ViewPageFacilities
    Click Element   xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav/div/div[2]/div[6]

CreateFacilities
    Click Element    xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav-content/div/beed-facilities-list/mat-card/mat-card-content/div/div[1]/div/button
    Click Element    xpath=//*[@id="mat-input-2"]
    Input Text       xpath=//*[@id="mat-input-2"]    Classroom E
    Click Element    xpath=//*[@id="mat-input-3"]
    Input Text       xpath=//*[@id="mat-input-3"]    6
    sleep    2s
    click element    xpath=//mat-dialog-container[@id='mat-mdc-dialog-0']/div/div/beed-create-edit-facility/mat-dialog-actions/div/div/button[2]/span[2]

