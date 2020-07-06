***Settings***
library  SeleniumLibrary
Resource  Variables.robot
***Keywords***
Load Page
    Open Browser  https://www.cars.com  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  5
Sign In
    [Arguments]  &{Credentions}
    Wait Until Page Contains Element  css=._2m4tT
    Click Element  css=._2m4tT
    Wait Until Page Contains Element  css=.cui-tab-labels > li:nth-child(1)
    Click Element  css=.cui-tab-labels > li:nth-child(1)
    Wait Until Page Contains Element  css=input.input:nth-child(2)
    Click Element  css=input.input:nth-child(2)
    Input Text  css=input.input:nth-child(2)  ${Credentions}[Email]
    Wait Until Page Contains Element  css=input.input:nth-child(4)
    Click Element  css=input.input:nth-child(4)
    Input Text  css=input.input:nth-child(4)  ${Credentions}[Password]
    Wait Until Page Contains Element  css=.cui-button
    Click Element  css=.cui-button
Login scenarious
    [Arguments]  &{Credentions}
    Load Page 
    Sign In  &{Credentions}
    Close All browsers
Search The Car
    Wait Until Page Contains Element  css=._2imB5 > a:nth-child(1)
    Click Element  css=._2imB5 > a:nth-child(1)
    Wait Until page Contains Element  css=.zip-field
    Click Element  css=.zip-field
    Input Text  css=.zip-field  12222
    Wait Until Page Contains Element  css=.as-button-bar-used
    Click Element  css=.as-button-bar-used
    Wait Until Page Contains Element  css=.as-choose-a-style
    Click Element  css=.as-choose-a-style
    Wait Until Page Contains Element  css=div.col-group:nth-child(6) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1)
    Click Element  css=div.col-group:nth-child(6) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1)
    Wait Until Page Contains Element  css=label.as-fuel-type-label:nth-child(4)
    Click element  css=label.as-fuel-type-label:nth-child(4)
    Wait Until Page Contains Element  css=.cui-button
    Click Element  css=.cui-button
Select One Of The Resuls
    Wait Until page Contains Element  css=#listing-806122707 > div:nth-child(1) > div:nth-child(2) > ul:nth-child(7)
    Click Element  css=#listing-806122707 > div:nth-child(1) > div:nth-child(2) > ul:nth-child(7)
    