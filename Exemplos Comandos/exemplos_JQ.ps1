#TRAZENDO TODOS OS INTENS DO ARRAY
qlik data-file ls | jq '.[]'

#TRAZENDO O PRIMEIRO 1 ITEM   DO ARRAY (ARRAYS SÃO INICIADOS EM 0)
qlik data-file ls | jq '.[0]'

#TRAZENDO APENEAS O ATRIBUTO NAME E RENOMEANDO COM NOME
qlik data-file ls | jq '.[]|{nome: .name}'

#COLOCANDO TODOS OS ITENS EM UM UNICO ARRAY
qlik data-file ls | jq '[.[]|{nome: .name}]'

#TRAZENDO APENAS O ATRIBUTO NOME EM UMA LISTA
qlik data-file ls | jq '[.[]|{nome: .name}][].nome'

    