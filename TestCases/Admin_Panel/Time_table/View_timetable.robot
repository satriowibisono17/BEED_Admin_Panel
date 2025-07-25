*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/

*** Test Cases ***
TimeTablePage
    LoginToApplication
    sleep    2s
    AdminPanel
    sleep    3s
    View_Timetable
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
   Click Button    xpath=//*[contains(text(), 'Login')]
    sleep    3s

AdminPanel
   Click Element   xpath=//*[contains(text(), 'Admin panel')]

View_Timetable
   click element   xpath=//*[contains(text(), 'Timetable')]