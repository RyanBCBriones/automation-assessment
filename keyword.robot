*** Keywords ***

#Given
User Is In Optimy App Login Page
    Location Should Contain      ${OPTIMY}
    Element Should Be Visible    ${OPTIMY_LOGO}

#When
User Inputs "${e_type}" Email
    Set Selenium Speed    3.5 seconds
    Run Keyword If    '${e_type}' == 'Valid'
    ...    Input Text    ${EMAIL_FIELD}    ${VALID_EMAIL}
    ...    ELSE IF    '${e_type}' == 'Invalid'
    ...    Input Text    ${EMAIL_FIELD}     ${INVALID_EMAIL}

User Inputs "${e_type}" Password
    Set Selenium Speed    3.5 seconds
    Run Keyword If    '${e_type}' == 'Valid'
    ...    Input Text    ${PASSWORD_FIELD}    ${VALID_PASSWORD_VALUE}
    ...    ELSE IF    '${e_type}' == 'Invalid'
    ...    Input Text    ${PASSWORD_FIELD}    ${INVALID_PASSWORD_VALUE}

User Clicks Login Button
    Set Selenium Speed    2 seconds
    Click Element     ${LOGIN_BUTTON}

#Then
Required "${e_field}" Field Error Should Be Visible
    Run Keyword If    '${e_field}' == 'Email'
    ...    Element Should Be Visible    ${REQUIRED_EMAIL}
    ...    ELSE IF    '${e_field}' == 'Password'
    ...    Element Should Be Visible    ${REQUIRED_PASSWORD}
    Page Should Contain    ${REQUIRED_FIELD_ERROR}

User Failed To Log In With Incorrect "${e_value}"
    Run Keyword If    '${e_value}' == 'Email'
    ...    Page Should Contain    ${INVALID_EMAIL_ERROR}
    ...    ELSE    Element Should Be Visible    ${FAILED_LOGIN_PROMPT}


# User Has Successfully Logged In To Optimy App
#     Location Should Contain    ${TRANSACTION_LIST_URL_EXT}

