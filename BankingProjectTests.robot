*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                           https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login
${BTN_CUSTOMER_LOGIN}            xpath://button[@class='btn btn-primary btn-lg' and @ng-click='customer()']
${SELECT_CUSTOMER}               xpath://select[@id='userSelect']
${BTN_LOGIN}                     xpath://button[text()='Login']
${BTN_DEPOSIT}                   xpath://button[@class='btn btn-lg tab' and @ng-click='deposit()']
${BTN_WITHDRAW}                  xpath://button[@class='btn btn-lg tab' and @ng-click='withdrawl()']
${BTN_TRANSACTIONS}              xpath://button[@class='btn btn-lg tab' and @ng-click='transactions()']
${INPUT_DEPOSIT_AMOUNT}          xpath://input[@ng-model='amount']
${INPUT_WITHDRAW_AMOUNT}         xpath://input[@ng-model='amount']
${CUSTOMER_NAME}                 Harry Potter

*** Test Cases ***
Login As Customer
    [Documentation]    Verify that a customer can log in successfully
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Set Selenium Timeout    15 seconds
    Wait Until Page Contains Element    ${BTN_CUSTOMER_LOGIN}
    Click Button  ${BTN_CUSTOMER_LOGIN}
    Wait Until Page Contains Element    ${SELECT_CUSTOMER}
    Select From List By Label    ${SELECT_CUSTOMER}    ${CUSTOMER_NAME}
    Click Button  ${BTN_LOGIN}
    Log    Successfully logged in as customer
    Close Browser

Deposit Money
    [Documentation]    Verify that a customer can deposit money successfully
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Set Selenium Timeout    15 seconds
    Wait Until Page Contains Element    ${BTN_CUSTOMER_LOGIN}
    Click Button  ${BTN_CUSTOMER_LOGIN}
    Wait Until Page Contains Element    ${SELECT_CUSTOMER}
    Select From List By Label    ${SELECT_CUSTOMER}    ${CUSTOMER_NAME}
    Click Button  ${BTN_LOGIN}
    Wait Until Page Contains Element    ${BTN_DEPOSIT}
    Click Button  ${BTN_DEPOSIT}
    Wait Until Page Contains Element    ${INPUT_DEPOSIT_AMOUNT}
    Input Text    ${INPUT_DEPOSIT_AMOUNT}    500
    Click Button  xpath://button[text()='Deposit']
    Log    Successfully deposited money
    Close Browser

Withdraw Money
    [Documentation]    Verify that a customer can withdraw money successfully
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Set Selenium Timeout    15 seconds
    Wait Until Page Contains Element    ${BTN_CUSTOMER_LOGIN}
    Click Button  ${BTN_CUSTOMER_LOGIN}
    Wait Until Page Contains Element    ${SELECT_CUSTOMER}
    Select From List By Label    ${SELECT_CUSTOMER}    ${CUSTOMER_NAME}
    Click Button  ${BTN_LOGIN}
    Wait Until Page Contains Element    ${BTN_WITHDRAW}
    Click Button  ${BTN_WITHDRAW}
    Wait Until Page Contains Element    ${INPUT_WITHDRAW_AMOUNT}
    Input Text    ${INPUT_WITHDRAW_AMOUNT}    300
    Click Button  xpath://button[text()='Withdraw']
    Log    Successfully withdrew money
    Close Browser

View Transactions
    [Documentation]    Verify that a customer can view transaction history
    Open Browser    ${URL}    edge
    Maximize Browser Window
    Set Selenium Timeout    15 seconds
    Wait Until Page Contains Element    ${BTN_CUSTOMER_LOGIN}
    Click Button  ${BTN_CUSTOMER_LOGIN}
    Wait Until Page Contains Element    ${SELECT_CUSTOMER}
    Select From List By Label    ${SELECT_CUSTOMER}    ${CUSTOMER_NAME}
    Click Button  ${BTN_LOGIN}
    Wait Until Page Contains Element    ${BTN_TRANSACTIONS}
    Click Button  ${BTN_TRANSACTIONS}
    Log    Successfully viewed transactions
    Close Browser
