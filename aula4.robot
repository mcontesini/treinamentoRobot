*** Variable ***
@{Numeros}    1    3    5    7    8    4    2
@{LISTA-NUM}    1    2    3    4    5    6    7    8    9    10
*** Keywords ***
Maior Idade "${IDADE}"
    IF    ${IDADE} >= 18
        Log To Console    \nMaior de Idade
    END

Maior Idade Argumento
    [Arguments]    ${IDADE}
    IF    ${IDADE} >= 18
        Log To Console    \nMaior de Idade 
    ELSE
        Log To Console    \nMenor de Idade
    END   
Achar Numero "@{Numeros}"
    FOR    ${NUM}    IN    @{Numeros}
      IF    ${NUM} == 5
          Log To Console    \nSucesso
      END
    END
Sucesso Argumento
    [Arguments]    @{Lista}    
    FOR    ${NUM}    IN    @{Lista}
      IF    ${NUM} == 5
          Log To Console    \nSucesso
      END
    END

Par ou Impar
    [Arguments]    @{LISTA}
    FOR    ${NUM}    IN    @{LISTA} 
        ${CALCULO}    Evaluate    ${NUM} % 2   
        IF    ${CALCULO} == 1
            Log To Console    \n${NUM} é Ímpar  
        ELSE    
            Log To Console    \n${NUM} é Par
        END
    END

Numero 5 e 8
    FOR    ${NUM}    IN RANGE    0    10
        Log To Console    \n${NUM}
        IF    ${NUM} == 5
            Log To Console    Estou no Número ${NUM}
        ELSE IF    ${NUM} == 8
            Log To Console    Estou no Número ${NUM}
        END
    END

Numeros Lista
    [Arguments]    @{LISTA}
    FOR    ${NUM}    IN    @{LISTA}
        Log To Console    \n${NUM}
        IF    ${NUM} == 3
            Log To Console    Estou no número ${NUM}
        ELSE IF    ${NUM} == 7    
        Log To Console    Estou no número ${NUM}
        END
    END
*** Test Cases ***
Teste Maior Idade
    Maior Idade "20"
    Maior Idade Argumento    17

Teste Sucesso
    Sucesso Argumento    @{Numeros}    
    Achar Numero "@{Numeros}"     
Teste Par ou Impar
    Par ou Impar    @{Numeros}

Teste Numero 5 e 8
    Numero 5 e 8
    Numeros Lista    @{LISTA-NUM}
