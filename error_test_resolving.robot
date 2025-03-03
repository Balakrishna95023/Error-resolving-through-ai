*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    RobotFrameworkAI
Library    OperatingSystem

*** Variables ***
${CODE_FILE}    test_error.robot
${ERROR_FILE}    log_error.html
${OUT_FILE}    output.robot
${CODE_FILE_2}    test_error2.robot
${ERROR_FILE_2}    log_error2.html
${OUT_FILE_2}    output2.robot
${CODE_FILE_3}    test_error3.robot
${ERROR_FILE_3}    log_error3.html
${OUT_FILE_3}    output3.robot

*** Test Cases ***
Analyze Code File
    ${CODE}=    Get File    ${CODE_FILE}
    ${ERROR}=    Get File    ${ERROR_FILE}
    # Configure AI model
    Set AI Model    openai
    Set Name    Test Assistant
    Set Instructions    You are a Robot Framework debugging assistant. Identify errors and return only the corrected Robot Framework code.
    Set Temperature    1.5
    Set Top P    0.8

    # Create the assistant
    Create Assistant

    # Define the AI message
    ${MESSAGE}=    Set Variable    Here is my Robot Framework script:\n\n${CODE}\n\n and error file:\n\n${Error}\n\nFix the errors and return only the corrected .robot file content.Dont give any single extra lines other than robot code in the output.
    # Send the message with properly formatted file paths
    ${RESPONSE}=    Generate Response    openai    ${MESSAGE}    gpt-4o

    # Save the corrected .robot file
    Create File    ${OUT_FILE}    ${RESPONSE}

    Log To Console    Final corrected Robot Framework script saved to: ${OUT_FILE}

Analyze Code File 2
    ${CODE_2}=    Get File    ${CODE_FILE_2}
    ${ERROR_2}=    Get File    ${ERROR_FILE_2}
    # Configure AI model
    Set AI Model    openai
    Set Name    Test Assistant
    Set Instructions    You are a Robot Framework debugging assistant. Identify errors and return only the corrected Robot Framework code.
    Set Temperature    1.5
    Set Top P    0.8

    # Create the assistant
    Create Assistant

    # Define the AI message
    ${MESSAGE}=    Set Variable    Here is my Robot Framework script:\n\n${CODE_2}\n\n and error file:\n\n${Error_2}\n\nFix the errors and return only the corrected .robot file content.Dont give any single extra lines other than robot code in the output.
    # Send the message with properly formatted file paths
    ${RESPONSE}=    Generate Response    openai    ${MESSAGE}    gpt-4o

    # Save the corrected .robot file
    Create File    ${OUT_FILE_2}    ${RESPONSE}

    Log To Console    Final corrected Robot Framework script saved to: ${OUT_FILE_2}

Analyze Code File 3
    ${CODE_3}=    Get File    ${CODE_FILE_3}
    ${ERROR_3}=    Get File    ${ERROR_FILE_3}
    # Configure AI model
    Set AI Model    openai
    Set Name    Test Assistant
    Set Instructions    You are a Robot Framework debugging assistant. Identify errors and return only the corrected Robot Framework code.
    Set Temperature    1.5
    Set Top P    0.8

    # Create the assistant
    Create Assistant

    # Define the AI message
    ${MESSAGE}=    Set Variable    Here is my Robot Framework script:\n\n${CODE_3}\n\n and error file:\n\n${Error_3}\n\nFix the errors and return only the corrected .robot file content.Dont give any single extra lines other than robot code in the output.
    # Send the message with properly formatted file paths
    ${RESPONSE}=    Generate Response    openai    ${MESSAGE}    gpt-4o

    # Save the corrected .robot file
    Create File    ${OUT_FILE_3}    ${RESPONSE}

    Log To Console    Final corrected Robot Framework script saved to: ${OUT_FILE_3}