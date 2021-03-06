*** Settings ***
Library  SeleniumLibrary
Resource  Variables.robot
*** Keywords ***
Load Page
    Open Browser  https://www.cars.com  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
Wait And Click
    [Arguments]  ${locator}
    Wait Until Page Contains Element  ${locator}
    Click Element  ${locator}
Load Page And Maximize Browser Window
    Load Page
    Maximize Browser Window
Sign In
    [Arguments]  &{credentials}
    Wait And Click  css=._2m4tT
    Wait And Click  css=.cui-tab-labels > li:nth-child(1)
    Wait And Click  css=input.input:nth-child(2)
    Input Text  css=input.input:nth-child(2)  ${credentials}[Email]
    Wait And Click  css=input.input:nth-child(4)
    Input Text  css=input.input:nth-child(4)  ${credentials}[Password]
    Wait And Click  css=.cui-button
Login Scenarious
    [Arguments]  &{credentials}
    Load Page
    Sign In  &{credentials}
    Close All browsers
Search The Car
    Wait And Click  css=._2imB5 > a:nth-child(1)
    Wait And Click  css=.zip-field
    Input Text  css=.zip-field  12222
    Wait And Click  css=.as-button-bar-used
    Wait And Click  css=.as-choose-a-style
    Wait And Click  css=div.col-group:nth-child(6) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1)
    Wait And Click  css=label.as-fuel-type-label:nth-child(4)
    Wait And Click  css=.cui-button
Select One Of The Results
    Wait And Click  css=#listing-819374526 > div:nth-child(1) > div:nth-child(2)
