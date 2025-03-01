#*** Settings ***
#
#Library    SeleniumLibrary
#Library    RobotFrameworkAI
## We should pass the OPEN_AI key in the environmental variables before importing RobotFrameworkAI library
#
#*** Test Cases ***
#Generate
#    # ${S}=    Generate Test Data    openai    address    gpt-3.5-turbo    3
#    # Log To Console    ${S}
#    ${S}=    Generate Response    openai    Design robot framework automation to validate the email input field with valid and invalid data    gpt-3.5-turbo
#    Log    ${S}
#    Log To Console    ${S}

*** Settings ***
Library    SeleniumLibrary
Library    RobotFrameworkAI
Library    OperatingSystem

*** Variables ***
${CODE_FILE}    test_error.robot
${Error_file}    log_error.html

*** Test Cases ***
Analyze Code File
    ${CODE}=    Get File    ${CODE_FILE}
    ${Error}=    Get File    ${Error_file}
    ${PROMPT}=    Set Variable    Here is my Robot Framework script:\n\n${CODE}\n\n and error file:\n\n${Error}\n\ncheck the error and resolve it by giving the reason
    ${SOLUTION}=    Generate Response    openai    ${PROMPT}    gpt-3.5-turbo
    Log To Console    ${SOLUTION}
    Log    ${SOLUTION}
