*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/

*** Test Cases ***
InstitutionPage
    LoginToApplication
    sleep    5s
    AdminPanel
    sleep    5s
    ViewInstitution
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
    sleep    5s
    Click Button    xpath=//*[contains(text(), 'Login')]
AdminPanel
    Click Element   xpath=//*[contains(text(), 'Admin panel')]

ViewInstitution
    click element   xpath=//div[(text() = 'Institutions' or . = 'Institutions')]