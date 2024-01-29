*** Settings ***
Documentation     Test case 1 Quiz Robot Framework 64021856
Library           SeleniumLibrary
Suite Setup       Open Browser    http://automationexercise.com   gc


*** Variables ***

${name}    pimchar 
${email}    pimnaree.char@gmail.com
${phoneNumber}    0968269827
${password}    Panggy1234
${firstname}    pim
${lastname}    char
${company}    University of Phayao
${address1}    18 moo 8  
${address2}    -
${state}    alaska
${city}    Anchorage
${zipcode}    99540




*** Keywords ***
Click Signup Element
   Click Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a

Input name
   [Arguments]    ${name}
   Input Text    //*[@name="name"]    ${name}

Input Email
   [Arguments]     ${email}
   Input Text    //*[@id="form"]/div/div/div[3]/div/form/input[3]    ${email}

Click Signup Button
   Click Button    //*[@id="form"]/div/div/div[3]/div/form/button

Checked Title
   Click Element    //*[@id="id_gender2"]

Input password
   [Arguments]    ${password}
   Input Text    //*[@id="password"]    ${password}

Click BDate
   Click Element    //*[@id="days"]

Select BDate
   Click Element    //*[@id="days"]/option[2]

Click BMonth
   Click Element    //*[@id="months"]

Select BMonth
   Click Element    //*[@id="months"]/option[2]

Click BYear
   Click Element    //*[@id="years"]

Select BYear
   Click Element    //*[@id="years"]/option[2]

Checked Checkbox newsletter 
   Click Element    //*[@id="newsletter"]

Checked Checkbox option 
   Click Element    //*[@id="optin"]

Input firstName
   [Arguments]    ${firstname}
   Input Text    //*[@id="first_name"]    ${firstname}

Input lastName
   [Arguments]    ${lastname}
   Input Text    //*[@id="last_name"]   ${lastname}

Input company
   [Arguments]    ${company}
   Input Text    //*[@id="company"]    ${company}

Input address1
   [Arguments]    ${address1}
   Input Text    //*[@id="address1"]    ${address1}

Input address2
   [Arguments]    ${address2}
   Input Text    //*[@id="address2"]    ${address2}

Click contry
   Click Element    //*[@id="country"]

Select contry
   Click Element    //*[@id="country"]/option[2]

Input state
   [Arguments]    ${state}
   Input Text    //*[@id="state"]    ${state}

Input city
   [Arguments]    ${city}
   Input Text    //*[@id="city"]    ${city}

Input zipcode
   [Arguments]    ${zipcode}
   Input Text    //*[@id="zipcode"]    ${zipcode}

Input phoneNumber
   [Arguments]    ${phoneNumber}
   Input Text    //*[@id="mobile_number"]    ${phoneNumber}

Click CreateAccount Button
   Click Button    //*[@id="form"]/div/div/div/div[1]/form/button

Click Continue Button
   Click Element    //*[@id="form"]/div/div/div/div/a

Click DelectAccount Element
   Click Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[5]/a

*** Test Cases ***
Register User
   [Documentation]    Test the login functionality with valid credentials
   
   Wait Until Page Contains Element    //*[@id="slider"]
   Page Should Contain Element    //*[@id="slider"]
   
   Click Signup Element

   Wait Until Page Contains    New User Signup!
   Page Should Contain    New User Signup!
   
   Input name        ${name}
   Input Email       ${email}

   Click Signup Button
   
   Wait Until Page Contains Element   //*[@id="form"]/div/div/div/div[1]/h2/b
   Page Should Contain Element   //*[@id="form"]/div/div/div/div[1]/h2/b

   Checked Title
   
   Input password    ${password}
   Click BDate
   Select BDate
   Click BMonth
   Select BMonth
   Click BYear
   Select BYear
   Checked Checkbox newsletter
   Checked Checkbox option

   Input firstName    ${firstname}
   Input lastName    ${lastname}
   Input company    ${company}
   Input address1    ${address1}
   Input address2    ${address2}
   Click contry
   Select contry
   Input state    ${state}
   Input city    ${city}
   Input zipcode    ${zipcode}
   Input phoneNumber    ${phoneNumber}

   Click CreateAccount Button

   Wait Until Page Contains Element    //*[@id="form"]/div/div/div/h2/b
   Page Should Contain Element   //*[@id="form"]/div/div/div/h2/b

   Click Continue Button
   
   Page Should Contain Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[10]/a

   Click DelectAccount Element
   Wait Until Page Contains Element   //*[@id="form"]/div/div/div/h2/b
   Page Should Contain Element    //*[@id="form"]/div/div/div/h2/b
   Click Continue Button