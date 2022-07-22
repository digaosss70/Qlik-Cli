#PowerShell script that wraps qlik-cli to delete all datasets that are owned by "unknown" users

$userIds = & qlik user ls -q
$allDatasets = qlik item ls --resourceType=dataset | ConvertFrom-Json
$unknownUserDatasets = $allDatasets | Where-Object ownerId -notin $userIds
if ($unknownUserDatasets.Length -gt 0) {
Write-Host "There are $($unknownUserDatasets.Length) out of $($allDatasets.Length) datasets listed below that are owned by unknown users."
$unknownUserDatasets | Format-Table id,name
$confirm = Read-Host "Remove them? (Type 'yes' and press Enter to confirm)"

if ($confirm -eq "yes") {
$unknownUserDatasets | ForEach-Object {
qlik item rm $_.id | Out-Default
}
Write-Host "Done."
} else {
Write-Host "Canceled by user."
}
} else {
Write-Host "All datasets belong to a user."
}