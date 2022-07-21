#CRIANDO ARQUIVOS

#query do espaço id
$queryEspacoId = '[.[] | select(.spaceId == \"62bd8cb2302dbace918f6727\") | {id: .id}][0].id'

#querry com o id da conexão
$conexaoId = qlik data-file connection ls | jq $queryEspacoId

#lista os arquivos no espaço em questão
#qlik data-file ls --connectionId $conexaoId | jq '.[]|{nome: .name,id: .id}'

#Pasta onde os arquivos estão (neste caso estou listando apenas txts 
$localArquivos = dir "E:\CURSO POWER SHEEL\*.txt"

#for para subir todos os arquivos
ForEach ($variavel in $localArquivos) {
qlik data-file create -f $variavel.FullName --name $variavel.Name --connectionId $conexaoId >> log.txt
}


