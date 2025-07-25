*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/

*** Test Cases ***
SearchDataInstitution
    LoginToApplication
    AdminPanel
    sleep    5s
    ViewInstitution
    sleep    5s
    SearchInstitution
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
    Click Button    xpath=//*[contains(text(), 'Login')]
    sleep    3s

AdminPanel
    Click Element   xpath=//*[contains(text(), 'Admin panel')]

ViewInstitution
    click element   xpath=//div[(text() = 'Institutions' or . = 'Institutions')]

SearchInstitution
    click element   xpath=//*[@id="mat-input-1"]
    sleep   3s
    input text        xpath=//*[@id="mat-input-1"]    Al-Azhar




