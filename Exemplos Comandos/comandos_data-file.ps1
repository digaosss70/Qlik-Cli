#VERIFICA O ID DO DATAFILES (CONECTION ID) BUSCANDO PELO ID DO ESPAÇO
qlik data-file connection ls | jq '[.[] | select(.spaceId == """"62d968fe2b76a4c4f402a3a6"""") | {id: .id}][0].id' 

#UPLOAD DE NOVO ARQUIVO EM UM ESPAÇO COM O DATAFILES (CONECTION ID)
qlik data-file create -f "C:\Users\Asus\Desktop\dfsdf.txt" --name "ArquivoTeste.txt" --connectionId "61becc1d-c4fe-4ee7-bb44-bd374f02d22a"

##UPLOAD DE NOVO ARQUIVO NO ESPAÇO PESSOAL
qlik data-file create -f "C:\Users\Asus\Desktop\dfsdf.txt" --name "ArquivoTeste1.txt"

#LISTAR AQUIVOS DO MEU ESPAÇO PESSOAL
qlik data-file ls 

#LISTAR AQUIVOS DE UM ESPAÇO BUSCADO PELO (CONECTION ID) BUSCANDO PELO ID DO ESPAÇO
qlik data-file ls --connectionId "61becc1d-c4fe-4ee7-bb44-bd374f02d22a"

#UPDATE DE ARQUIVO CRIADO EM UM ESPAÇO BUSCADO PELO (CONECTION ID) BUSCANDO PELO ID DO ESPAÇO
qlik data-file update 7c39b855-3669-4276-a9e3-63357292d478 --connectionId "61becc1d-c4fe-4ee7-bb44-bd374f02d22a" --file "C:\Users\Asus\Desktop\dfsdf.txt"

#UPDATE DE ARQUIVO CRIADO NO MEU ESPAÇO PESSOAL
qlik data-file update ef2b2038-35f5-435c-ad33-64bea9e29fd9 --file "C:\Users\Asus\Desktop\dfsdf.txt"

#DELETAR UM UNICO ARQUIVO
qlik data-file rm 7c39b855-3669-4276-a9e3-63357292d478

