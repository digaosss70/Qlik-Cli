#ATUALIZA ARQUIVOS QUE FORAM CRIADOS EM UM LOG
$dadosFiles = get-content "E:\Qlik-Cli\Qlik-Cli\Layouts\UploadFilesLog.txt"| ConvertFrom-Csv -Header idFile,filePath,fileNome,connectionId

$dadosFiles| ForEach-Object {
qlik data-file update $_.idFile --connectionId $_.connectionId --file $_.filePath
}