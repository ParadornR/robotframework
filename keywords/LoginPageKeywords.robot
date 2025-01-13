*** Settings ***
Library     SeleniumLibrary
Resource    CommonKeywords.robot


*** Keywords ***
user login to future skill platform with ${username} and ${password}
    CommonKeywords.Wait until element is ready then click element
    ...    xpath=//*[@id="__next"]/div[2]/div/div[1]/div[1]/div/div[2]/div[2]/div[2]/button[1]
    CommonKeywords.Wait until element is ready then input text    name=email    ${username}
    CommonKeywords.Wait until element is ready then input text    name=password    ${password}
    CommonKeywords.Wait until element is ready then click element
    ...    xpath=//button[@type="submit" and text()="เข้าสู่ระบบ"]

future skill should display display validate login fail message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}
