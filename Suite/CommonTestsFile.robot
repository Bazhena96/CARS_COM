***Settings***
library  SeleniumLibrary
Resource  ../Resources/Keywords.robot
resource  ../resources/Variables.robot

*** Test Cases ***
User Load Page
    Load Page
    Close all Browsers
User Try A Different Login Scenarious
    [Template]  Login Scenarious
    &{Correct_Login_And_Password}
    &{Correct_Login}
    &{Correct_Password}
User Search The Cars
    Load Page
    Search The Car
    Select One Of The Resuls
    Close All Browsers
