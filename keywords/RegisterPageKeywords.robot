*** Settings ***
Library     SeleniumLibrary
Resource    CommonKeywords.robot


*** Keywords ***
future skill should display otp message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text    ${expected_message}

user register to future skill platform with ${username} ${firstName} ${lastName} ${phoneNumber} ${password} ${confirmPassword}
    CommonKeywords.Wait until element is ready then click element
    ...    xpath=//*[@id="__next"]/div[2]/div/div[1]/div[1]/div/div[2]/div[2]/div[2]/button[2]
    CommonKeywords.Wait until element is ready then input text    name=email    ${username}
    CommonKeywords.Wait until element is ready then input text    name=firstName    ${firstName}
    CommonKeywords.Wait until element is ready then input text    name=lastName    ${lastName}
    CommonKeywords.Wait until element is ready then input text    name=phoneNumber    ${phoneNumber}
    CommonKeywords.Wait until element is ready then input text    name=newPassword    ${password}
    CommonKeywords.Wait until element is ready then input text    name=confirmPassword    ${confirmPassword}
    CommonKeywords.Wait until element is ready then click Select Checkbox
    ...    xpath=//input[@name="consent"]
    CommonKeywords.Wait until element is ready then click element
    ...    xpath=//button[@type="submit" and text()="สมัครสมาชิก"]
