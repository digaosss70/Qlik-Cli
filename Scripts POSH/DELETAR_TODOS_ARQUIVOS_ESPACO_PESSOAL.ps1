#DELETAR TODOS OS ARQUIVOS DO ESPAÇO PESSOAL
$allDatasets = qlik data-file ls | ConvertFrom-Json

$allDatasets| ForEach-Object {
qlik data-file rm $_.id | Out-Default
}