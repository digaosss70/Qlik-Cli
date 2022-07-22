#SOBE ARQUIVOS LISTADOS EM UM CSV
#GERA LOG PARA POSTERIOR UPDATE

$dadosFiles = get-content "E:\Qlik-Cli\Qlik-Cli\Layouts\GERAR_FILES_XLSX.csv"| ConvertFrom-Csv
$dadosLog

$dadosFiles| ForEach-Object {
$dadosconnection  = qlik data-file connection ls --spaceId $_.spaceId | ConvertFrom-Json
$dadosCriacao =  qlik data-file create -f $_.arq --name $_.name --connectionId $dadosconnection.id | ConvertFrom-Json
$dadosCriacao.id +","+ $_.arq+","+ $_.name+","+$dadosconnection.id >> $_.log
}