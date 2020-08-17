*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
Resource  ../resources/Variables.robot

*** Test Cases ***
User load page
    Load Page And Maximize Browser Window
    Close all Browsers
User try a different login scenarious
    [Template]  Login Scenarious
    &{correct login and password}
    &{&{correct login}}
    &{correct password}
User search the cars
    Load Page And Maximize Browser Window
    Search The Car
    Select One Of The Resuls
    Close All Browsers
