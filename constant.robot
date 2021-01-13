*** Variables ***
${OPTIMY}                      login.optimyapp
${OPTIMY_LOGO}                 css=.img-responsive

#Fields
${EMAIL_FIELD}                 css=#tab-login div:nth-child(5) > input
${PASSWORD_FIELD}              css=input[name="password"]

#Credentials
${INVALID_EMAIL}               incorrect123.xyz
${VALID_EMAIL}                 correct123@gmail.com
${INVALID_PASSWORD_VALUE}      Pass321
${VALID_PASSWORD_VALUE}        Pass123

#Button
${LOGIN_BUTTON}                css=#tab-login > form > button

#Errors
${FAILED_LOGIN_PROMPT}         css=#login-invalid
${REQUIRED_FIELD_ERROR}        This field is required.
${REQUIRED_EMAIL}              css=span[for="email"]
${REQUIRED_PASSWORD}           css=span[for="password"]
${INVALID_EMAIL_ERROR}         Please enter a valid email address (e.g.: john.smith@gmail.com).

#Url
# ${TRANSACTION_LIST_URL_EXT}    /MyTransactions.asp
