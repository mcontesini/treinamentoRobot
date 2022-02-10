*** Keywords ***
Somar Números 1 
    [Arguments]    ${NUM-1}    ${NUM-2}
    ${SOMA}    Evaluate    ${NUM-1}+${NUM-2}
    [Return]    ${SOMA}
Somar Números 2
    [Arguments]    ${NUM-1}    ${NUM-2}
    ${SOMA}    Evaluate    ${NUM-1}+${NUM-2}  
    Log To Console    ${SOMA}

# keyword pra somar numeros com Argumento Embutido e sem Return
Somar Números 3 "${NUM-1}" e "${NUM-2}"
    ${SOMA}    Evaluate    ${NUM-1}+${NUM-2}
    Log To Console    ${SOMA}

Somar os números "${NUM-1}" e "${NUM-2}"
    ${SOMA}    Evaluate    ${NUM-1}+${NUM-2}
    [Return]    ${SOMA}
Subtrair os números "${NUM-1}" e "${NUM-2}"
    ${SUBTRAÇÃO}    Evaluate    ${NUM-1}-${NUM-2}
    [Return]    ${SUBTRAÇÃO}
Dividir os números "${NUM-1}" e "${NUM-2}"
    ${DIVISÃO}    Evaluate    ${NUM-1}/${NUM-2}
    [Return]    ${DIVISÃO}
Multiplicar os números "${NUM-1}" e "${NUM-2}"
    ${MULTIPLICAÇÃO}    Evaluate    ${NUM-1}*${NUM-2}
    [Return]    ${MULTIPLICAÇÃO}

Completa e-mail
    [Arguments]    ${NOME}    
    [Return]    ${NOME}@email.com.br

Escrever e-mail "${NOME}"
    [Return]    ${NOME}@email.com.br

*** Test Cases ***
Soma de dois números
    ${RESULTADO}    Somar Números 1    3    3
    Log To Console    ${RESULTADO}

    Somar Números 2    5    5
    Somar Números 3 "7" e "7"   

Teste Soma
    ${RESULTADO}    Somar os números "10" e "10"
    Log To Console    ${RESULTADO}

Teste Subtração
    ${RESULTADO}        Subtrair os números "10" e "5"
    Log To Console    ${RESULTADO}

Teste Divisão 
    ${RESULTADO}    Dividir os números "4" e "2"
    Log To Console    ${RESULTADO}

Teste Multiplicação
    ${RESULTADO}    Multiplicar os números "2" e "2"
    Log To Console    ${RESULTADO}

Teste e-mail
    ${CONTA.EMAIL}    Completa e-mail    Mateus
    Log To Console    ${CONTA.EMAIL} 

Teste do e-mail
    ${CONTA.EMAIL}    Escrever e-mail "Mateus"
    Log To Console    ${CONTA.EMAIL}

    