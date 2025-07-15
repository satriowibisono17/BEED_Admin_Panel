*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/
${FILE_PATH}      C://Users//user//Downloads//list_of_educators.xlsx
${INPUT_LOCATOR}  xpath=//[@id=fileReader]
${SUBMIT_BUTTON}  xpath=//button[@type='submit'

*** Test Cases ***
ViewPageAdminPanel
    LoginToApplication
    AdminPanel
    sleep    3 s
    View_Page_educator
    Import Educator
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
    sleep    3s

Import Educator
    click element   xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav-content/div/beed-educators/mat-card/mat-card-content/mat-toolbar/div[2]/button[2]
    Choose File    xpath=//input[@id='fileReader']    ${FILE_PATH}
    click element  xpath=//*[@id="mat-mdc-dialog-0"]/div/div/beed-import-modal/mat-dialog-actions/button[3]