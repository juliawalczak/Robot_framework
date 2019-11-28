*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}     ${Browser}
    open browser  ${SiteUrl}    ${Browser}
    maximize browser window

Click Register Link
    click link      ${link_Reg}

Enter FirstName
    [Arguments]  ${firstName}
    Input text  ${txt_firstName}    ${firstName}

Enter LastName
    [Arguments]  ${lastName}
    Input text  ${txt_lastName}     ${lastName}

Enter Phone
    [Arguments]  ${phone}
    Input text  ${txt_phone}        ${phone}

Enter Email
    [Arguments]  ${email}
    Input text  ${txt_email}        ${email}

Enter Address1
    [Arguments]  ${add1}
    Input text  ${txt_add1}     ${add1}

Enter Address2
    [Arguments]  ${add2}
    Input text  ${txt_add2}     ${add2}

Enter City
    [Arguments]  ${city}
    Input text  ${txt_city}     ${city}

Enter State
    [Arguments]  ${state}
    Input text  ${txt_state}     ${state}

Enter Postal Code
    [Arguments]  ${postCode}
    Input text  ${txt_postCode}     ${postCode}
Enter Country
    [Arguments]  ${country}
    select from list by label   ${drp_country}  ${country}

Enter User Name
    [Arguments]  ${username}
    Input text   ${txt_userName}  ${username}

Enter Password
    [Arguments]  ${password}
    Input text   ${txt_Password}  ${password}

Enter Confirmed Password
    [Arguments]  ${confpassword}
    Input text   ${txt_conformedPassword}   ${confpassword}

Click Submit
    click button    ${btn_submit}

Verify Succesful Registration
    page should contain     Thank you for registering.

close my browsers
    close all browsers