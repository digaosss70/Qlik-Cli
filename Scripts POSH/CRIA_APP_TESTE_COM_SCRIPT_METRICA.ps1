$nomeApp = "APP_TESTE_INICIAL"
$descricaoApp = "App de teste inicial"
$espacoId = "62d968fe2b76a4c4f402a3a6"
$qvsScript = "E:\Qlik-Cli\Qlik-Cli\Layouts\SCRIPT_TESTE_CRT00.qvs"
$metricasjson = "E:\Qlik-Cli\Qlik-Cli\Layouts\CRIA_METRICAS.json"

#cria app e salva o id
$idAppCriado = qlik app create --attributes-description $descricaoApp --attributes-name $nomeApp --attributes-spaceId $espacoId | jq '. |{id: .attributes.id}.id'

#colocar o qvs no script
qlik app script set $qvsScript --app $idAppCriado

#atualiza app
qlik app reload --app $idAppCriado

#cria métricas
qlik app measure set $metricasjson --app $idAppCriado