*** Settings ***
Documentation    This will test the login functionality.
Suite Setup    Open Browser    url=https://login.optimyapp.com/   browser=Chrome
Default Tags    login
Library    Selenium2Library
Test Setup        Reload Page
Suite Teardown    Close Browser
Resource    keywords/keyword.robot
Resource    variables/constant.robot

*** Test Cases ***

User Has Failed To Login To Optimy App With Empty Email
    Given User Is In Optimy App Login Page
    When User Inputs "Valid" Password
    And User Clicks Login Button
    Then Required "Email" Field Error Should Be Visible

User Has Failed To Login To Optimy App With Empty Password
    Given User Is In Optimy App Login Page
    When User Inputs "Valid" Email
    And User Clicks Login Button
    Then Required "Password" Field Error Should Be Visible

User Has Failed To Login To Optimy App With Incorrect Email Format
    Given User Is In Optimy App Login Page
    When User Inputs "Invalid" Email
    And User Inputs "Valid" Password
    And User Clicks Login Button
    Then User Failed To Log In With Incorrect "Email"

User Has Failed To Login To Optimy App With Incorrect Password
    Given User Is In Optimy App Login Page
    When User Inputs "Valid" Email
    And User Inputs "Invalid" Password
    And User Clicks Login Button
    Then User Failed To Log In With Incorrect "Password"

# User Has Successfully Logged In To Optimy App
#     Given User Is In Optimy App Login Page
#     When User Inputs "Valid" Email
#     And User Inputs "Valid" Password
#     And User Clicks Login Button
#     Then User Has Successfully Logged In To Optimy App
