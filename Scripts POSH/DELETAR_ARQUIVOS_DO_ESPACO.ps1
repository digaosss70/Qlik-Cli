#deletar arquivos de um espaço

#query do espaço id
$queryEspacoId = '[.[] | select(.spaceId == \"62bd8cb2302dbace918f6727\") | {id: .id}][0].id'

#querry com o id da conexão
$conexaoId = qlik data-file connection ls | jq $queryEspacoId

#lista os arquivos no espaço em questão
$listaArquivos = qlik data-file ls --connectionId $conexaoId | jq '[.[]|{id: .id}][].id'

ForEach ($variavel in $listaArquivos) {
qlik data-file rm $variavel
}
