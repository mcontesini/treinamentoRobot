*** Variable ***
&{PESSOA}   nome=Mateus    idade=25    profissão=analista de sistemas    hobbie=jogar    cor=branca    altura=1,72
@{CELULAR}    Samsung    Xiaomi    iPhone    Motorola    LG
&{NOTAS}    a=10    b=6    c=8
@{NOTAS2}    10    6    8

*** Test Cases ***
Variável Dicionario
    Log To Console    ${PESSOA}
    Log    ${PESSOA}
    Log    ${PESSOA.nome}
    Log    ${PESSOA.idade}
    Log    ${PESSOA.profissão}
    Log    ${PESSOA.hobbie}
    Log    ${PESSOA.cor}
    Log    ${PESSOA.altura}

Variável Lista
    Log To Console    ${CELULAR}
    Log    ${CELULAR}
    Log To Console    ${CELULAR[0]}
    Log    ${CELULAR[0]}
    Log    ${CELULAR[1]}
    Log    ${CELULAR[2]}
    Log    ${CELULAR[3]}
    Log    ${CELULAR[4]}

Operações
    ${MÉDIA}=    Evaluate    (${NOTAS.a} + ${NOTAS.b} + ${NOTAS.c}) / 3
    Log    ${MÉDIA}

    ${MÉDIA}=    Evaluate    (${NOTAS2[0]} + ${NOTAS2[1]} + ${NOTAS2[2]} ) / 3
    Log    ${MÉDIA}

    