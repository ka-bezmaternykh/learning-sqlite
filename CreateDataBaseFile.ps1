$DefaultFileName = "tasks.db"
$FileName = $args[0]
if (!$FileName){
    $FileName = $DefaultFileName
}

if (Test-Path $FileName){
    Write-Host "$($FileName) exists. Script terminated"
    return
}
sqlite3 $FileName '.read create-schema.sql'
sqlite3 $FileName '.read seed-data.sql'