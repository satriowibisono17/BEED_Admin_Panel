*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}        https://test3-fairview.beed.world/

*** Test Cases ***
CreateDataParents
    LoginToApplication
    AdminPanel
    sleep    3 s
    View_Parents
    Create_Parents
    Capture Page Screenshot



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

View_Parents
    Click Element  xpath=//html/body/app-root/app-layout/beed-side-bar/mat-sidenav-container/mat-sidenav/div/div[2]/div[3]
    sleep    3s

Create_Parents
    Click Element       xpath=//*[contains(text(), 'CREATE PARENT')]
    Click Element       xpath=//input[@id='mat-input-2']
    Input Text          xpath=//input[@id='mat-input-2']    Jiwandoni
    Click Element       xpath=//input[@id='mat-input-3']
    Input Text          xpath=//input[@id='mat-input-3']    Mulyadi
    Click Element       xpath=//input[@id='mat-input-5']
    Input Text          xpath=//input[@id='mat-input-5']    Mulyadi.J@sharklasers.com
    Click Element       xpath=//*[contains(text(), 'Family role')]
    Wait Until Element Is Visible    xpath=//*[contains(text(), 'father')]    timeout=5s
    sleep   1s
    Click Element       xpath=//*[contains(text(), 'father')]
    sleep   1s
    Click Element       xpath=//*[contains(text(), 'married')]
    Click Element       xpath=//input[@id='mat-input-15']
    input text          xpath=//input[@id='mat-input-15']   10071981
    sleep    2s
    click element       xpath=//form/div[2]/button/span[2]
    sleep    3s
    click element   xpath=//beed-add-learner-parent-dialog/div/div/mat-form-field/div/div/div[2]/input
    input text      xpath=//beed-add-learner-parent-dialog/div/div/mat-form-field/div/div/div[2]/input    Andy Jack
    sleep   3s
    click element   xpath=//html/body/div[3]/div[4]/div/mat-dialog-container/div/div/beed-add-learner-parent-dialog/mat-dialog-content/mat-card
    sleep   4s
    click element   xpath=//span[(text() = 'SAVE' or . = 'SAVE')]
   click element    xpath=//span[(text() = ' Create parent ' or . = ' Create parent ')]