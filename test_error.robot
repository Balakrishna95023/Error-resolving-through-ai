*** Settings ***

Library    SeleniumLibrary

*** Test Cases ***
Open Browser Test
    Open Browser  https://www.google.com  chrome
    Sleep  2s  # Wait for a few seconds to see the browser
    Click Element    //*[@id="APjFqb"]
    Input Text1    //*[@id="APjFqb"]    BNP    tyy
    Click Button    /html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[4]/div[6]/center/input[1]
    Click Element    //*[@id="og-te"]
    Close Browser