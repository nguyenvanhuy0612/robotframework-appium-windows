*** Settings ***
Library    AppiumLibrary

Task Setup    Open Root Session
Test Teardown    Appium Close All Applications

*** Test Cases ***
Test 1
    Log    Click To (30,30)
    Appium Click Via Powershell    x=30    y=30    button=right

*** Keywords ***
Open Root Session
    ${parameters}    Create Dictionary
    ...    remote_url=http://192.168.196.153:4723
    ...    platformName=Windows
    ...    appium:app=Root
    ...    appium:automationName=Windows
    ...    appium:newCommandTimeout=30
    ${session_index}    Open Application    &{parameters}
    Set Appium Timeout    10 secs