*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/

*** Test Cases ***
CreateDataCourse
    LoginToApplication
    AdminPanel
    sleep    3 s
    ViewPageCourses
    sleep    2s
    Create_Course
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

Create_Course
    Click Element   xpath=//*[contains(text(), 'CREATE COURSE')]
    sleep    2s
    Click Element   xpath=//*[@id='mat-input-2']
    Input text      xpath=//*[@id='mat-input-2']    Computer Sciences & Engineering
    Click Element   xpath=//*[@id="mat-mdc-dialog-0"]/div/div/beed-course/mat-dialog-actions/button[2]/span[2]
