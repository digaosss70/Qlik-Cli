# Obter a data de hoje
$dataDeHoje = Get-Date

# Calcular o número de dias desde uma data base fixa (por exemplo, 01/01/1900)
$diasDesdeBase = ($dataDeHoje - (Get-Date "1900-01-01")).Days

#Calcula mod de $diasDesdeBase para 0, 1 , 2, 3
$modDiaBackup = $diasDesdeBase % 4

#Lista todos os spaces
$managedSpaces = qlik space ls  -q --limit 1000

#for de todos os spaces
forEach($m in $managedSpaces) {
    
    #Lista todos os apps no space
    $apps = qlik app ls --spaceId $m --limit 1000 

    #for de todos os apps
    forEach($a in $apps) {

        if($($a.substring(0,2)) -ne 'ID'){
            $appId = $a.substring(0,36);
            $qtd =  $($a.length - 36 -5);
            $appNome = $a.substring(41,$qtd);
            qlik app unbuild --app $($appId) --dir "pathRaiz/path_BKP/$($appNome)_$($appId)/$($appId)/$($modDiaBackup)/"
        }
    }
    
}

