
##PUBLICAR PASTAS DE UM APP

$SaasAppId = '2c63b1d2-2767-4be1-af6d-0281848200e4'

$sheets= qlik app object ls --app $SaasAppId --json | jq '.[] | select(.qType==\"sheet\").qId' 

$sheets | ForEach-Object {
    qlik app object publish $_ -a $SaasAppId
}
