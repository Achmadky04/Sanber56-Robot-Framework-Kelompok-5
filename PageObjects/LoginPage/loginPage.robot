*** Settings ***
Documentation
Resource            ../base.robot
Resource            ../HomePage/homePage.robot
Variables           loginPageLocatior.yaml


*** Keywords ***
Input Username
    [Arguments]                        ${username}
    Wait Until Element Is Visible      locator=${username_input}
    Input Text                         locator=${username_input}    text=${username}

Input User Password
    [Arguments]                      ${password}
    Input Text                       locator=${password_input}         text=${password}


Verify Error Message
    Wait Until Element Is Visible    locator=${error}
Click Sign In Button On Login Screen
    Click Element                    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Login With Valid Credential
    [Arguments]                ${username}   ${password}
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username        username=${username}
    Input User Password    password=${password}
    Click Sign In Button On Login Screen
