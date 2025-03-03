
*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Browser Test
    Open Browser  https://www.google.com  chrome
    Sleep  2s  # Wait for a few seconds to see the browser
    Click Element    //*[@name="q"]
    Input Text    //*[@name="q"]    BNP
    Click Button    //input[@name="btnK"]
    Sleep    1s
    Press Keys    //input[@name="btnK"]    ENTER
    Sleep    2s
    Close Browser