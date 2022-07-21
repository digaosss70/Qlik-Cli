#CRIANDO APP EM UM ESPAÇO
qlik app create --attributes-description "App de teste2" --attributes-name "APP_TESTE2" --attributes-spaceId "62d968fe2b76a4c4f402a3a6"

#CRIANDO APP NO ESPAÇO PESSOAL
qlik app create --attributes-description "App de teste" --attributes-name "APP_TESTE1"

#COLOCA SCRIPT NO APP ATRAVES DE UM QVS
qlik app script set "E:\Qlik-Cli\Qlik-Cli\Layouts\SCRIPT_TESTE_CRT00.qvs" --app "e8fd9b39-5116-41f8-8f4c-13f377a76574"

#ATUALIZA TODO O APP
qlik app build --app "e8fd9b39-5116-41f8-8f4c-13f377a76574"

#RECEBE A ASSOCIACAO DO APP
qlik app assoc --app "e8fd9b39-5116-41f8-8f4c-13f377a76574"

#LISTA DE APPS EM UM ESPAÇO
qlik app ls --spaceId "62d968fe2b76a4c4f402a3a6"
 
#LISTA DE APPS NO ESPAÇO PESSOAL
qlik app ls

#APAGA UM APLICATIVO
qlik app rm "41012723-8ad8-4ef9-8f28-f1c3dbc7842f"

#ATUALIZA SCRIPT DO APP
qlik app reload --app "e8fd9b39-5116-41f8-8f4c-13f377a76574"

#CRIA UMA MÉTRICA NO APP ATRAVES DE UM JSON
qlik app measure set "E:\Qlik-Cli\Qlik-Cli\Layouts\CRIA_METRICAS.json" --app "e8fd9b39-5116-41f8-8f4c-13f377a76574"

#LISTA AS MÉTRICAS DO APP
qlik app measure ls --app "e8fd9b39-5116-41f8-8f4c-13f377a76574"

#DELETA MÉTRICA DE UM APP
qlik app measure rm mtc_dias_01 --app "e8fd9b39-5116-41f8-8f4c-13f377a76574"