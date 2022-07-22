#CRIANDO ARQUIVOS

#query do espaço id
$dadosconnection  = qlik data-file connection ls --spaceId "62d968fe2b76a4c4f402a3a6" | ConvertFrom-Json 

#Pasta onde os arquivos estão (neste caso estou listando apenas txts 
$localArquivos = dir "E:\CURSO POWER SHEEL\*.txt"

#for para subir todos os arquivos
ForEach ($variavel in $localArquivos) {
qlik data-file create -f $variavel.FullName --name $variavel.Name --connectionId $dadosconnection.id >> "E:\CURSO POWER SHEEL\log.txt"
}


