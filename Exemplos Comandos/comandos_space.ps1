#Criar espaço com o nome QLIK-CLI_EPACO do tipo shared
qlik space create --name QLIK-CLI_EPACO --type shared

#Listar espaços
qlik space ls | jq '.[] |{nome: .name,id: .id}'

#Deletar espaço QLIK-CLI_EPACO usando o id
qlik space rm 62d821339ab183d16503f899