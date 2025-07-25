*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/

*** Test Cases ***
SearchCourse
    LoginToApplication
    AdminPanel
    sleep    3 s
    ViewPageCourses
    sleep    2s
    Search_Courses
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
    Click Button    xpath=//*[contains(text(), 'Login')]
    sleep    3s


AdminPanel
     Click Element   xpath=//*[contains(text(), 'Admin panel')]

ViewPageCourses
    Click Element  xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav/div/div[2]/div[7]


Search_Courses
    click element   xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav-content/div/beed-courses-list/mat-card/mat-card-content/div/div[2]/div/mat-form-field
    Input text      xpath=//input[@id='mat-input-1']    Computer Animation




