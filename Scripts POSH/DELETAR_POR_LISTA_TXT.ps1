#DELETAR FILES ATRAVES DO ID PROVINITES DE UM TXT
$idsParaDeletar = get-content "E:\Qlik-Cli\Qlik-Cli\Layouts\Lista.txt" 
$idsParaDeletar| ForEach-Object {
qlik data-file rm $_ | Out-Default
}