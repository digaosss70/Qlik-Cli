#atualizando arquivos

#pastaInicial
$pasta = """"+"E:\CURSO POWER SHEEL\"

#query do espaço id
$queryEspacoId = '[.[] | select(.spaceId == \"62bd8cb2302dbace918f6727\") | {id: .id}][0].id'

#querry com o id da conexão
$conexaoId = qlik data-file connection ls | jq $queryEspacoId

#lista os arquivos no espaço em questão
$listaArquivos = qlik data-file ls --connectionId $conexaoId | jq '[.[]|{id: .id}][].id'

ForEach ($variavel in $listaArquivos) {
$nomeArquivo = qlik data-file get $variavel | jq '[.[]][3]'
$file = $pasta+$nomeArquivo.Replace("""","")+""""
qlik data-file update $variavel --connectionId $conexaoId --file $file
}
