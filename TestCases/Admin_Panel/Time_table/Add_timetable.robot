*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/

*** Test Cases ***
ViewPageAdminPanel
    LoginToApplication
    sleep    2s
    AdminPanel
    sleep    3s
    View_Timetable
    sleep    10s
    select_academic_year
    sleep    5s
    add_timetable
    sleep    3s
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
   Click Element   xpath=//*[contains(text(), 'Admin panel')]

View_Timetable
   click element   xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav/div/div[2]/div[5]

Select_academic_year
  click element     xpath=//div[@id='mat-select-value-13']
  click element     xpath=//mat-option[@id = 'mat-option-59' and (text() = '2022 - 2030' or . = '2022 - 2030')]

add_timetable
    click element   xpath=//*[@id="mat-tab-content-9-0"]/div/div/mat-card[4]/button/span[2]
    click element   xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav-content/div/beed-leasson/mat-card/form/div[1]/div/mat-form-field[3]/div[1]/div/div[1]




