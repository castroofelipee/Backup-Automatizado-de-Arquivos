$SourceFolder = "C:\Caminho\Para\Origem" 
$BackupFolder = "D:\Caminho\Para\Destino" 
$BackupDate = Get-Date -Format "yyyyMMddHHmmss" 


$BackupDestination = Join-Path -Path $BackupFolder -ChildPath $BackupDate
New-Item -Path $BackupDestination -ItemType Directory


Copy-Item -Path $SourceFolder\* -Destination $BackupDestination -Recurse


Write-Output "Backup de $SourceFolder concluído. Arquivos copiados para $BackupDestination"
