*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${TEXTO_SUCESSO} =    MY ACCOUNT

*** Test Cases ***
Cenário: Cadastro novo
    Open Browser    http://automationpractice.com/index.php    chrome
    Maximize Browser Window
    Set Selenium Timeout    60
    Click Element    xpath=//a[@class='login' and @title='Log in to your customer account']
    Input Text    id=email_create    sasa@baba.com
    Click Element    id=SubmitCreate
    Wait Until Element Is Visible    id=id_gender2
    Click Element    xpath=//input[@id='id_gender1']
    Input Text    id=customer_firstname    Emily
    Input Text    id=customer_lastname    Lima
    Input Text    id=passwd    123Robot123
    Sleep    2
    Click Element    xpath=//select[@id='days']/child::option[@value='2']
    Sleep    2
    Select From List By Value    xpath=//select[@id='months']    2
    Select From List By Value    id=years    2002
    Input Text    id=company    empresa
    Input Text    id=address1    Rua teste
    Input Text    id=city    São Paulo
    Select From List By Value    id=id_state    2
    Input Text    id=postcode    12345
    Input Text    id=phone_mobile    11986028425
    Click Element    id=submitAccount
    ${TEXTO_REAL} =    Get Text    xpath=//div[@id='center_column']/child::h1[@class='page-heading']
    Should Be Equal As Strings    ${TEXTO_SUCESSO}    ${TEXTO_REAL}
    Sleep    2
    Close Browser
