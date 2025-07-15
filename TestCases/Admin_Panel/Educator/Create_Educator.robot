*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/

*** Test Cases ***
ViewPageAdminPanel
    LoginToApplication
    AdminPanel
    Sleep    3s
    View_Page_educator
    Sleep    2s
    Create_educator
    Capture Page Screenshot

*** Keywords ***
LoginToApplication
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2s
    Input Text      xpath=//*[@id="Username"]    satrio.wicaksono17@sharklasers.com
    Input Text      xpath=//*[@id="Password"]    Satrio99_
    Click Element   xpath=//button[contains(text(), 'Login')]
    Sleep    3s

AdminPanel
    Click Element   xpath=//*[contains(text(),'Admin panel')]

View_Page_educator
    Click Element   xpath=//a/span[contains(text(), 'Educator')]
    Sleep    3s

Create_educator
    Click Element   xpath=//*[contains(text(), 'CREATE EDUCATOR')]
    Sleep    3s
    Input Text      xpath=//*[@id='mat-input-2']    Thomas
    Input Text      xpath=//*[@id='mat-input-3']    Mulyadi
    Input Text      xpath=//*[@id='mat-input-5']    Mulyadi.T@sharklasers.com
    Input Text      xpath=//*[@id='mat-input-13']   19091991
    Sleep    4s
    Click Element   xpath=//span[contains(text(), 'Create Educator')]